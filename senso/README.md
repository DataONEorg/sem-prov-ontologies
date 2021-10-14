# SENSO

The SENSO ontology is designed to provide classification terms for labeling sensitive data for data archival and sharing. It will be [hosted on BioPortal](http://bioportal.bioontology.org/ontologies/SENSO).
The ontology was created by [Matt Jones](https://orcid.org/0000-0003-0077-4738).

## Ontology Design

### URIs

All term URIs begin with the prefix `http://purl.dataone.org/odo/SENSO_` and conform to the [printf](https://en.wikipedia.org/wiki/Printf_format_string) format of `http://purl.dataone.org/odo/SENSO_%08d`.

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
