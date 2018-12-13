The Ecosystem Ontology (ECSO)
-----------------------------
ECSO is currently in development (as of 12/2018) and should *not* be used for semantic annotations yet.  This status is expected to change in the near future.  The latest edits to the ontology may be found in the ``ECSO8.owl`` file within the **ECSO8-add_non-carbon_measurements** branch (https://github.com/DataONEorg/sem-prov-ontologies/tree/ECSO8-add_non-carbon_measurements/observation).

ECSO expresses **'Measurement Types'** to describe measurements present in raw data.  It uses the OBOÉ observation and measurements design pattern (OBOE: https://github.com/NCEAS/oboe) to capture both the **'entity of interest'** and **'characteristic measured'**.  ECSO is intended to be used with terms in other OWL ontologies, including ENVO, PATO, CHEBI, BCO and PCO. It is currently focused on carbon and associated measurements.

Introduction to this directory
-----------------------------
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
* Earth Science related Ontologies: https://docs.google.com/document/d/1YcRiiqNUVZlay3pDR6yQKuKHGe-Q5Mwynx_a0w8zkr0/edit?usp=sharing


Notes
-----------------------------
11JUL2018 MPS
status of d1-ECSO in GitHub was that we had three branches-- master, run4 (the one to which the purl.dataone.org URL's resolved), and ArcticECSO (Elizabeth's branch?).  These all had outdated imports of ENVO and PATO that required refreshing, and had problems, both before and after getting new IMPORTs, with how these displayed in Protegé-- with many missing labels. 

MPS started afresh with an almost complete import of the latest ENVO, a complete import of the latest UO, and a selective import of PATO (see the saved ONTOFOX files that were used to derive these imports).  Protegé 5.2 was then used to load up the ENVO_IMPORT from local filesystem with a DIRECT IMPORT, followed by PATO and UO, and then URL-based imports of OBOÉ and SKOS-DL. 

Then careful examination of an earlier "d1-ECSO-generated.owl" file was used to copy terms from the d1-ECSO-generated.owl file into the growing "IMPORT"-based ontology.
