# Observation

This directory stores ontologies related to scientific observations.

This is meant to be a collaborative space as we develop ontologies that meet
the annotation goals in phase 2 of the DataONE project. Partial support for these
efforts also provided through the NSF Scientific Observations Network, "SONet"
project, NSF INTEROP #0753144.

Candidate ontologies include:
* OBOE extensions that include Entities, Measurements, Characteristics, Standards, and Protocols. E.g.,
	* OBOE: http://ecoinformatics.org/oboe/oboe.1.1/oboe.owl
	* OBOE-SBC: http://ecoinformatics.org/oboe-ext/sbclter.1.0/oboe-sbclter.owl
* O&M lite models
* Other domain-relevant ontologies
	* SWEET and others?
* Earth Science related Ontoloiges: https://docs.google.com/document/d/1YcRiiqNUVZlay3pDR6yQKuKHGe-Q5Mwynx_a0w8zkr0/edit?usp=sharing

## Development

### URIs

ECSO uses semi-opaque URIs of the form `http://purl.dataone.org/odo/ECSO_%d08`. New terms use the next available URI, which is determined by incrementing the decimal portion of the most recently minted URI by one.

### Deprecation

When deprecating terms, ECSO:

- Does not reuse the URI for a new term or remove the term.
- Adds an `owl:deprecated` property to the deprecated term with a `xsd:boolean` value of `true`.
- Adds an IAO annotation property [`term_replaced_by`](http://www.ontobee.org/ontology/IAO?iri=http://purl.obolibrary.org/obo/IAO_0100001) to the deprecated term pointing at the term replacing it.

## Notes

### 11JUL2018 MPS

status of d1-ECSO in GitHub was that we had three branches-- master, run4 (the one to which the purl.dataone.org URL's resolved), and ArcticECSO (Elizabeth's branch?).  These all had outdated imports of ENVO and PATO that required refreshing, and had problems, both before and after getting new IMPORTs, with how these displayed in Protegé-- with many missing labels.

MPS started afresh with an almost complete import of the latest ENVO, a complete import of the latest UO, and a selective import of PATO (see the saved ONTOFOX files that were used to derive these imports).  Protegé 5.2 was then used to load up the ENVO_IMPORT from local filesystem with a DIRECT IMPORT, followed by PATO and UO, and then URL-based imports of OBOÉ and SKOS-DL.

 Then careful examination of an earlier "d1-ECSO-generated.owl" file was used to copy terms from the d1-ECSO-generated.owl file into the growing "IMPORT"-based ontology.
