# website

This repository has a corresponding website at https://dataoneorg.github.io/sem-prov-ontologies/ which is built and deployed by GitHub Actions and hosted by GitHub Pages.
When new ontologies are added to the repository that should be listed on the website, the new ontology has to be explicitly added to a special [ontologies.txt](https://github.com/DataONEorg/sem-prov-ontologies/blob/main/.github/ontologies.txt) file.

[ontologies.txt](https://github.com/DataONEorg/sem-prov-ontologies/blob/main/.github/ontologies.txt) is a CSV that looks like:

```csv
MOSAiC,The MOSAiC Ontology,./MOSAiC/MOSAiC.owl
ARCRC,The Arctic Report Card Ontology,./arctic-report-card/ARCRC.ttl
```

and has columns for an ontology acronym, ontology title, and ontology location within the repository (in that order).
Enabling a new ontology then involves adding a new row to the CSV following the above convention.
