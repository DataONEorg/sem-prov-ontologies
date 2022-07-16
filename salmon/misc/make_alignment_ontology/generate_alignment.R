#' Generate an alignment ontology for deprecated SALMON ontology terms
#'
#' See: https://github.com/DataONEorg/sem-prov-ontologies/issues/120

library(rdflib)
library(tibble)

# Prep: Load ontology and list of deprecated IRIs
onto <- rdflib::rdf_parse("../../SALMON.owl", format = "turtle")
dep_iris <- readLines("../find-deprecated-iris/deprecated_iris.txt")

# Step 1: Load deprecated IRIs and transpose them
fixed_iris <- gsub("http://purl.dataone.org/odo/salmon_", "http://purl.dataone.org/odo/salmon_00", dep_iris)

# Step 2: Change 00000647 to 00000674
fixed_iris[which(fixed_iris == "http://purl.dataone.org/odo/salmon_00000647")] <- "http://purl.dataone.org/odo/salmon_00000674"

#' Step 3: Add in labels
#' Get an rdfs:label for the given IRI from the given RDF dataset
get_label <- function(rdf, iri) {
  query <- paste0("select ?label where { <", iri, "> <http://www.w3.org/2000/01/rdf-schema#label> ?label} limit 1")
  result <- rdflib::rdf_query(onto, query)

  if (nrow(result) != 1) {
    stop("Number of results doesn't equal one. Something has gone terribly wrong.")
  }

  result[[1]]
}


labels <- vapply(fixed_iris, function(iri) { get_label(onto, iri)}, "")

# Step 4: Start building out a data.frame
term_df <- data.frame(
  old_iri = dep_iris,
  equiv_iri = fixed_iris,
  label = labels,
  row.names = NULL
)

# Step 5: Make alignment ontology

onto_iri <- "http://purl.dataone.org/odo/salmon_alignment_"

preamble <- tibble::tribble(
  ~subject, ~predicate, ~object,
  onto_iri, "http://www.w3.org/1999/02/22-rdf-syntax-ns#type", "http://www.w3.org/2002/07/owl#Ontology"
)

align_onto <- rdflib::rdf()

# preamble
for (i in seq_len(nrow(preamble))) {
  rdflib::rdf_add(align_onto, preamble[i, "subject"][[1]], preamble[i, "predicate"][[1]], preamble[i, "object"][[1]])
}

# terms
for (i in seq_len(nrow(term_df))) {
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/1999/02/22-rdf-syntax-ns#type", "http://www.w3.org/2002/07/owl#Class")
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/2002/07/owl#equivalentClass", term_df[i, "equiv_iri"])
  rdflib::rdf_add(align_onto, term_df[i, "old_iri"][[1]], "http://www.w3.org/1999/02/22-rdf-syntax-ns#label", term_df[i, "label"])
}

rdflib::rdf_serialize(align_onto, doc = "alignment.ttl", format = "turtle")
