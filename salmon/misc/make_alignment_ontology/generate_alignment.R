#' Generate an alignment ontology for deprecated SALMON ontology terms
#'
#' See: https://github.com/DataONEorg/sem-prov-ontologies/issues/120

library(rdflib)
library(tibble)

### Prep: Load ontology and list of deprecated IRIs
onto <- rdflib::rdf_parse("../../SALMON.owl", format = "turtle")
dep_iris <- readLines("../find_deprecated_iris//deprecated_iris.txt")
onto_iri <- "http://purl.dataone.org/odo/SALMON_alignment_"

### Step 1: Load deprecated IRIs and transpose them
fixed_iris <- gsub("http://purl.dataone.org/odo/salmon_", "http://purl.dataone.org/odo/SALMON_00", dep_iris)

# Step 2: Change 00000647 to 00000674
fixed_iris[which(fixed_iris == "http://purl.dataone.org/odo/salmon_00000647")] <- "http://purl.dataone.org/odo/SALMON_00000674"

### Step 3: Add in labels
### Get an rdfs:label for the given IRI from the given RDF dataset
get_label <- function(rdf, iri) {
  query <- paste0("select ?label where { <", iri, "> <http://www.w3.org/2000/01/rdf-schema#label> ?label} limit 1")
  result <- rdflib::rdf_query(onto, query)

  if (nrow(result) != 1) {
    stop("Number of results doesn't equal one. Something has gone terribly wrong.")
  }

  result[[1]]
}

### Get the type of a given IRI from the given RDF dataset
get_type <- function(rdf, iri) {
  query <- paste0("select ?type where { <", iri, "> a ?type} limit 1")
  result <- rdflib::rdf_query(onto, query)

  if (nrow(result) != 1) {
    stop("Number of results doesn't equal one. Something has gone terribly wrong.")
  }

  result[[1]]
}

labels <- vapply(fixed_iris, function(iri) { get_label(onto, iri)}, "")
types <- vapply(fixed_iris, function(iri) { get_type(onto, iri)}, "")

### Step 4: Start building out a data.frame
term_df <- data.frame(
  old_iri = dep_iris,
  equiv_iri = fixed_iris,
  label = labels,
  row.names = NULL
)

### Step 5: Make alignment ontology

# preamble
preamble <- tibble::tribble(
  ~subject, ~predicate, ~object, ~dataTypeIRI,
  onto_iri, "http://www.w3.org/1999/02/22-rdf-syntax-ns#type", "http://www.w3.org/2002/07/owl#Ontology", NA,
  onto_iri, "http://www.w3.org/2000/01/rdf-schema#label", "Alignment ontology for The Salmon Ontology (SALMON)", NA,
  onto_iri, "http://purl.org/dc/elements/1.1/description", "This ontology contains a set of classes (and their alignments) for deprecated terms from The Salmon Ontology (SALMON). While patterns for deprecating terms in ontologies commonly involve retaining the deprecated term(s) in the main ontology, we've opted to move the deprecated terms into an alignment ontology. Our main justification for this choice is (1) that all publicly-accessible instances of deprecated terms were created before the first published release of SALMON and (2) we have sufficient authorship access to update these instanaces to use published terms.", NA,
  onto_iri, "http://purl.org/dc/terms/license", "https://creativecommons.org/publicdomain/zero/1.0/", NA,
  onto_iri, "http://purl.org/dc/elements/1.1/date", "2022-07-18", "http://www.w3.org/2001/XMLSchema#date",
  onto_iri, "http://purl.org/dc/terms/creator", "https://orcid.org/0000-0002-0381-3766", NA,
  onto_iri, "http://usefulinc.com/ns/doap#GitRepository", "https://github.com/DataONEorg/sem-prov-ontologies", NA,
  onto_iri, "http://www.w3.org/2002/07/owl#versionInfo", "0.1", NA,
)

align_onto <- rdflib::rdf()

for (i in seq_len(nrow(preamble))) {
  rdflib::rdf_add(
    align_onto,
    preamble[i, "subject"][[1]],
    preamble[i, "predicate"][[1]],
    preamble[i, "object"][[1]],
    datatype_uri = preamble[i, "dataTypeIRI"][[1]])
}

# annotation properties

# "term replaced by" http://purl.obolibrary.org/obo/IAO_0100001
rdflib::rdf_add(align_onto, "http://purl.obolibrary.org/obo/IAO_0100001", "http://www.w3.org/1999/02/22-rdf-syntax-ns#type", "http://www.w3.org/2002/07/owl#AnnotationProperty")
rdflib::rdf_add(align_onto, "http://purl.obolibrary.org/obo/IAO_0100001", "http://www.w3.org/2000/01/rdf-schema#label", "term replaced by")

# terms
for (i in seq_len(nrow(term_df))) {
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/1999/02/22-rdf-syntax-ns#type", "http://www.w3.org/2002/07/owl#Class")
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/2002/07/owl#equivalentClass", term_df[i, "equiv_iri"])
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://purl.obolibrary.org/obo/IAO_0100001", term_df[i, "equiv_iri"])
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/2000/01/rdf-schema#label", term_df[i, "label"])
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/2002/07/owl#deprecated", "true", datatype_uri = "http://www.w3.org/2001/XMLSchema#boolean",)
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/2000/01/rdf-schema#comment", paste0("This term is deprecated in favor of ", term_df[i, "equiv_iri"], ". Existing uses should be updated where possible."))
}

# -------------------------------------------------------------------------


### Step 6: Serialize
rdflib::rdf_serialize(align_onto, doc = "SALMON_alignment.ttl", format = "turtle")
