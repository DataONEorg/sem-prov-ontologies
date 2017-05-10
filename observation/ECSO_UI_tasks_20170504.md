ECSO and dataset annotation, 2017
--------------
2017-05-05 D1
Mark S, Margaret


Tasks to be done by mid-July:
We are planning a 90 min workshop at ESIP, for data managers. The LTER is targeted here; see abstract text at bottom of this page. We expect that the workshop will have 3 basic components:

Participants will be able to 
 - explore ECSO through the annotation interface
 - log in and annotate a few datasets that they know well
 - Run a search from the main search interface, ostensibly to see how annotation improves search.

To accomplish this, we will need to complete the tasks from Summer 2016 (focused on the P/R runs, and is partly accomplished, https://github.com/DataONEorg/sem-prov-ontologies/blob/master/observation/ECSO_tasks_20160601.md)


A. Annotation and search interface
--------------
1.	Complete, ie, ready for use/comment
  1.	The “Sandbox” server is adequate, as long as is contains a significant proportion of LTER datasets  (more than just test_corpus_f)
  2.	https://search-sandbox-2.test.dataone.org/#data
  3.	Confirm that authentication system runs, with same accounts as D1 production
  4.	Confirm that tasks from his notes (directly to Ben) are done. Notes not included here, since they include screenshots, etc. -- Mark S 
  5.	UI also searches synonyms.

B.	ECSO 1.0
--------------
  1.	Tasks 2, 3, 6 from Summer 2016 
  2.	Reproduced here (features required for all new classes)
    1.	Entity/char --include useful ones from “auto-generated” run (Margaret)
    2.	metadata (definition, contributor, etc), Margaret
    3.	Synonyms and alt labels - 
      1.	produces a text list of syn candidates - Jim
      2.	review/add - Margaret
  3.	ECSO Ontology Quality checking - Bryce (tbd)
    1.	 We should design and run a few structural checks and other utilities.
    2.	Look for certain features as above
    3.	Missing or duplicate labels 
    4.	(some duplicates are fine, eg, when a simple word is found in two trees,
      1.	Litter
      2.	Bridge.
    5.	Duplicate ids (eg, grep id, sort | uniq). 

C.	Preview - 
--------------
  1.	Query LTER IMs to see who is planning to attend (Margaret)
  2.	examine their data for other classes, to anticipate adding to ECSO. (Margaret)




--------------
Proposed ESIP session (currently scheduled for Wed afternoon):

Annotating datasets with measurement classes from the Ecosystem Ontology (ECSO)

Presenter: Margaret O’Brien (perhaps others)

Type: workshop

A new measurement ontology, the Ecosystem Ontology (ECSO), is now available, as is a system for annotating datasets in DataONE. Because ontologies include parent-child structure, synonyms and enable formal logic, the data discovery process can be streamlined when dataset metadata incorporates annotations from ontologies. The ECSO project currently focuses on measurements related to carbon cycling - such as fluxes (e.g., ecosystem exchange, NPP, respiration) and concentrations (of pigments, carbon compounds). Measurement descriptions include units, applicable observed entities (both terrestrial and aquatic), and methods, and are based on a broad corpus of datasets found in DataONE. Additions are planned to add other classes of measurements to ECSO.  During this workshop, we will explore the ECSO ontology and demonstrate the annotation system. Participants will then be invited to annotate existing EML-described datasets with carbon cycling measurements, using the DataONE annotation interface.


