# The MOSAiC Ontology

An ontology to support Semantic Annotation of [MOSAiC](https://mosaic-expedition.org/) datasets housed in the [Arctic Data Center](https://arcticdata.io/).

## Contents

The MOSAiC ontology makes extensive use of axiomitization and the relationships encoded by these axioms are crucial to understanding the ontology.
So much so, we decided to materialize inferences in the published version and maintain a raw (uninferred/unreasoned) version.

- `MOSAiC.owl`: Suitable for exploration, annotation, consumption, etc. Should not be edited directly.
- `MOSAiC_raw.owl`: All edits should be made to this file. After edits are made, developers should open the file in Protégé and "Export inferred axioms as ontology...". Note: The top-level `owl:Ontology` triples get mixed in with triples from the imported ontologies so I just copy these triples from the last good version into the new export.

## Development notes

- We try to follow the [OBO Foundry Principles](http://www.obofoundry.org/principles/fp-000-summary.html) whenever possible
- When editing, only edit` MOSAiC_raw.owl` and be sure to run a reasoner (Pellet recommended) as you edit
