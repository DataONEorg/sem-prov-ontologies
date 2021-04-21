# SASAP & Salmon Ontologies

We are developing two ontologies:
1. [The Salmon Ontology](https://github.com/DataONEorg/sem-prov-ontologies/blob/initial-salmon-onto/salmon/salmon_ontology_v0.2.owl), an ontology which represents knowledge about salmon, features of their habitats, salmon stakeholders, and related entities
2. [The SASAP Ontology](https://github.com/DataONEorg/sem-prov-ontologies/blob/initial-salmon-onto/salmon/SASAP_ontology_v0.2.owl), an ontology which represents information about the State of Alaska's Salmon and People (SASAP) project, as well as knowledge about salmon, features of their habitats, salmon stakeholders, and related entities (NOTE: our intent is to *import* the Salmon Ontology into the SASAP Ontology).

A primary goal for developing these ontologies is to better enable semantic search of data holdings within the SASAP Data Portal and for more efficient and effective dataset integration across agencies.

These ontologies were created by [Mark Schildhauer](http://orcid.org/0000-0003-0632-7576) and [Samantha Csik](http://orcid.org/0000-0002-5300-3075), with contributions from [Matthew Jones](https://orcid.org/0000-0003-0077-4738) and [Bryce Mecum](https://orcid.org/0000-0002-0381-3766
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

- list and imported ontologies here

### Annotation Properties

Where appropriate, all terms have been annotated with the following properties:

- `rdfs:label` [http://www.w3.org/2000/01/rdf-schema#label]: The preferred label for the term
- `dc:creator` [http://purl.org/dc/elements/1.1/creator]: ORCID of the person that created the term
- `dc:date` [http://purl.org/dc/terms/date]: Date the term was created
-  etc.

## Contributing

Reporting of issues is welcomed as are conributions via pull requests.
Please file an issue before sending a pull request.
