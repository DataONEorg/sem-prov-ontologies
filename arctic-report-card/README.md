# ARCRC

The ARCRC ontology is associated with the National Oceanic and Atmospheric Administration's (NOAA) Arctic Report Card: https://arctic.noaa.gov/Report-Card project and is [hosted on BioPortal](http://bioportal.bioontology.org/ontologies/ARCRC).
The ontology was created by [Mark Schildhauer](http://orcid.org/0000-0003-0632-7576) and [Samantha Csik](http://orcid.org/0000-0002-5300-3075).

## The Arctic Report Card

Issued annually since 2006, the Arctic Report Card is a timely and peer-reviewed source for clear, reliable and concise environmental information on the current state of different components of the Arctic environmental system relative to historical records. The Report Card is intended for a wide audience, including scientists, teachers, students, decision-makers and the general public interested in the Arctic environment and science.

The main website for the Arctic Report Card as of Nov 1, 2020 is: https://arctic.noaa.gov/Report-Card

## Ontology Design

### URIs

All term URIs begin with the prefix `http://purl.dataone.org/odo/ARCRC_` and conform to the [printf](https://en.wikipedia.org/wiki/Printf_format_string) format of `http://purl.dataone.org/odo/ARCRC_%08d`.

### Imports

- ECSO8: http://purl.dataone.org/odo/ECSO8.owl
- geosparql: http://www.opengis.net/ont/geosparql

### Annotation Properties

Where appropriate, all terms have been annotated with the following properties:

- `rdfs:label` [http://www.w3.org/2000/01/rdf-schema#label]: The preferred label for the term
- `IAO:definition` [http://purl.obolibrary.org/obo/IAO_0000115]: The definition of the term
- `IAO:definition source` [http://purl.obolibrary.org/obo/IAO_0000119]: Source information related to the content in the `definition`
- `dc:description` [http://purl.org/dc/elements/1.1/description]: Extended information about the term
- `GO:database_cross_reference` [http://www.geneontology.org/formats/oboInOwl#hasDbXref]: Cross-references to other systems
- `rdfs:altLabel` [http://www.w3.org/2004/02/skos/core#altLabel]: Alternate labels for the term such as acronyms/initialisms and synonyms
- `owl:sameAs` [http://www.w3.org/2002/07/owl#sameAs]: Equivalent terms
- `rdfs:seeAlso` [http://www.w3.org/2000/01/rdf-schema#seeAlso]: Related terms
- `dc:creator` [http://purl.org/dc/elements/1.1/creator]: ORCID of the person that created the term
- `dc:date` [http://purl.org/dc/terms/date]: Date the term was created

## Contributing

Reporting of issues is welcomed as are conributions via pull requests.
Please file an issue before sending a pull request.