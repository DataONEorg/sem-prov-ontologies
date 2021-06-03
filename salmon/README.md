# SASAP & Salmon Ontologies

**NOTE: this README is currently under construction**

We are developing two ontologies:
1. [The Salmon Ontology](https://github.com/DataONEorg/sem-prov-ontologies/blob/initial-salmon-onto/salmon/salmon_ontology_v0.2.owl), an ontology which represents knowledge about salmon, features of their habitats, salmon stakeholders, and related entities.
2. [The SASAP Ontology](https://github.com/DataONEorg/sem-prov-ontologies/blob/initial-salmon-onto/salmon/SASAP_ontology_v0.2.owl), an ontology which represents information about the State of Alaska's Salmon and People (SASAP) project, as well as knowledge about salmon, features of their habitats, salmon stakeholders, and related entities (NOTE: our intent is to *import* the Salmon Ontology into the SASAP Ontology).

A primary goal for developing these ontologies is to better enable semantic search of data holdings within the SASAP Data Portal and for more efficient and effective dataset harmonization/integration across agencies.

These ontologies are being created by [Samantha Csik](http://orcid.org/0000-0002-5300-3075), [Mark Schildhauer](http://orcid.org/0000-0003-0632-7576), [Matthew Jones](https://orcid.org/0000-0003-0077-4738), and [Bryce Mecum](https://orcid.org/0000-0002-0381-3766
).

## The State of Alaska's Salmon and People (SASAP) Project

The State of Alaska Salmon and People Project (SASAP) seeks to provide a holistic, statewide overview of the status and characteristics of Alaska’s coupled human-salmon system. What has emerged is a deep look into the state of knowledge of the biological, sociocultural, economic, and governance dimensions of Alaska’s salmon and the people who depend upon them.

The SASAP project shares this knowledge with Alaska salmon users through comprehensive watershed-level summaries ([Regions](https://alaskasalmonandpeople.org/regions/)), focused research on specific salmon issues ([Topics](https://alaskasalmonandpeople.org/topics/)), and supported links to SASAP’s free, open-source datasets, accessible through the [Salmon Data Portal](https://knb.ecoinformatics.org/portals/SASAP/Data).  

The main website for the SASAP project as of April 21, 2020 is: https://alaskasalmonandpeople.org/

## Ontology Design

### URIs

#### SASAP Ontology

All term URIs begin with the prefix `http://purl.dataone.org/odo/SASAP_` and conform to the [printf](https://en.wikipedia.org/wiki/Printf_format_string) format of `http://purl.dataone.org/odo/SASAP_%08d`.

#### Salmon Ontology

All term URIs begin with the prefix `http://purl.dataone.org/odo/salmon_` and conform to the [printf](https://en.wikipedia.org/wiki/Printf_format_string) format of `http://purl.dataone.org/odo/salmon_%08d`.

### Imports

- *list imported ontologies here*

### Annotation Properties

Where appropriate, all terms have been annotated with the following properties:

- `rdfs:label` [http://www.w3.org/2000/01/rdf-schema#label]: The preferred label for the term
- `dc:creator` [http://purl.org/dc/elements/1.1/creator]: The ORCID of the person that created the term
- `dc:date` [http://purl.org/dc/terms/date]: The date the term was created
-  `skos:definition` [http://www.w3.org/2004/02/skos/core#definition]: The definition of the term
-  `dc:description`[http://purl.org/dc/elements/1.1/description]: Additional text that is more generalized than a definition. It provides context for a term and is not limited to describing what a term actually is.
-  `dc:source` [http://purl.org/dc/elements/1.1/source]: Used as an annotation property on a `skos:definition` or `dc:description` when the text is copied verbatim from the source.
-  `hasDbXref` [http://www.geneontology.org/formats/oboInOwl#hasDbXref]: Used as an annotation property on a `skos:definition` or `dc:description` when the text is _not_ copied verbatim from the source.
-  `owl:equivalentClass` [http://www.w3.org/2002/07/owl#equivalentClass]: Used to align Salmon Ontology classes with classes from external ontologies.
-  `rdfs:comment` [http://www.w3.org/2000/01/rdf-schema#comment]: For miscellaneous info, or comments to other ontology developers.
-  `skos:altLabel` [http://www.w3.org/2004/02/skos/core#altLabel]: Used for alternative labels of the same concept. An example is an acronym and its full name (e.g. SST and  sea surface temperature). This property is also used for synonomous terms (e.g. Chinook salmon and King salmon).
-  `skos:closeMatch` [http://www.w3.org/2004/02/skos/core#closeMatch]: Used to relate classes that are similar, but not exactly synonomous.
-  `skos:relatedMatch` [http://www.w3.org/2004/02/skos/core#relatedMatch]: Used to relate classes that .... 

## Contributing

Reporting of issues is welcomed as are conributions via pull requests.
Please file an issue before sending a pull request.
