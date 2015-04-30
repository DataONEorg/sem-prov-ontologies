created On: 2015-04-18                                                   	
Created By: Sophie Hou

Change Revisions:
-----------------

+------------------+--------------------+------------------------------------------------------------------------+
|Last Modified Date|Last Modified Person|Changes                                                                 |
+==================+====================+========================================================================+
|2015-04-18        |Sophie Hou          |Initial creation of the document.                                       |
+------------------+--------------------+------------------------------------------------------------------------+
|2015-04-20        |Sophie Hou          |Addition of information regarding URI syntax.                           | 
+------------------+--------------------+------------------------------------------------------------------------+
|2015-04-21        |Sophie Hou          |Addition of information regarding URI syntax used by DataONE PROV group |                  
|                  |                    |(under the Supplementary Notes section).                                |
+------------------+--------------------+------------------------------------------------------------------------+
|2015-04-27	   |Sophie Hou		|Addition of information regarding terms and conditions required when 	 |	
|		   |			|defining a new ontology concept or changning an existing concept	 |
|		   |			|(under the Notes - Defining New or Modifying Existing Concepts section).|
+------------------+--------------------+------------------------------------------------------------------------+

DataONE SEM Group - ID Format URI Syntax for Ontological Terms
==============================================================

Purpose
-------
The purpose of this document is to summarize the identifier formats as well as the uniform resource identifier (URI) syntax assigned to the ontological terms of the following sources: Ontology for Biomedical Investigations (OBI), Gene Ontology (GO), the Open Biological and Biomedical Ontology (OBO) Foundry, and Environment Ontology (ENVO), and to propose a possible identifier format for DataONE SEM group’s ontology.
The document also provides the summary of the methods proposed by these four ontologies for adding new terms (when a term describing the concept currently does not exist), adding alternative terms (for synonyms), and for changing/modifying existing terms.

Background
----------
DataONE is developing an ontology to model the knowledge related to primary production research in order to demonstrate improvement to understandability and discoverability of DataONE datasets through measuring recall (1) and precision (2).  In order to facilitate the identification of the terms/classes defined in the ontology, unique identifiers and resolvable URIs will be assigned to each of the terms/classes.  In addition, the DataONE SEM group would like to help promote current recommended practices for identifier format.  As a result, four ontologies in the areas of biological/biomedical and environmental sciences have been selected as the initial sources for the recommendation.

Objectives
----------
 - Summarize the unique identifier format and URI syntax used for the terms defined in the selected ontologies.
 - Propose a unique identifier format and URI syntax for DataONE SEM group’s ontology based on the current format used by the selected ontologies.
 - Summarize the methods used by the selected ontologies for the following: adding a new ontological concept, adding an alternative concept, and changing/modifying an existing concept.

Methodology/Process
-------------------
1) Select four initial ontologies as the basis for reviewing the identifier format.
  a) Ontology for Biomedical Investigations (OBI) - http://obi-ontology.org/page/Main_Page
  b) Gene Ontology (GO) - http://geneontology.org/
  c) The Open Biological and Biomedical Ontology (OBO) Foundry - http://www.obofoundry.org/
  d) Environment Ontology (ENVO) - http://environmentontology.org/
2) Using the home pages for these ontologies as the starting point, search for the documentations of identifier format guidelines  and of “terms and conditions” for adding and/or modifying concepts. 
3) Record any information found on the home pages and any additional information discovered regarding the identifier format in the Notes section of this document.
4) Record under Supplementary Notes section any additional information relating to the identifier format and URI syntax from sources other than the four selected ontologies.
5) Record under the Notes on Defining New or Modifying Existing Concepts section for information regarding the following: adding a new ontological concept, adding an alternative concept, and changing/modifying an existing concept.

Result Summary
--------------
The preliminary research based on the four selected ontologies showed that three out of the four ontologies adopted the following identifier format: [prefix]:nnnnnnn (nnnnnnn represents 7-digit string consisted of numeric characters, i.e. n = [0-9] and is often zero padded).

The other ontology used the the same format except with 8-digit string; i.e. [prefix]:nnnnnnnn, where n = [0-9].

As for the URI syntax, the OBO Foundry currently recommends the following for all Foundry compliant ontologies: 

http://purl.obolibrary.org/namespace/IDspcae_localID

where: 	namespace for the OBO Foundry-compliant ontologies = OBO

IDspace = short name for the ontology

localID = unique identifier (7-digit, zero padded numeric string).



In terms of the defining new, adding alternative, or modifying existing concepts, all four ontologies welcome suggestions to be submitted for adding new terms (when a term describing the concept currently does not exist), adding alternative terms (for synonyms), and for changing/modifying existing terms.  There are also format and minimal required information that are specified for each submission.  However, the submissions all seem to be reviewed by certain ontologies' editors/curators whose further information is not publicly available (there are Help Desk or Contact Us information, but these are not specific for the terms reviews).   

Notes
-----
1) OBI: 
 a) “Currently OBI is being built under the Basic Formal Ontology (BFO)” - http://obi-ontology.org/page/Main_Page
  i) Ex: An form of URI from BFO: http://purl.obolibrary.org/obo/BFO_0000004
 b) OBI Term Guidelines - http://obi-ontology.org/page/OBI_term_guidelines
 c) “OBI belongs to the OBO Foundry and strives to follow the OBO Foundry Principles” - http://obi-ontology.org/page/OBI_term_guidelines
 d) OBI ID Policy - http://obi-ontology.org/page/OBI_ID_Policy
  ii) Ex: The form of URIs is http://purl.obolibrary.org/obo/OBI_0010000
2) GO:
 a) Ontology Structure - http://geneontology.org/page/ontology-structure
  i) Every term has a term name—e.g. mitochondrion, glucose transport, amino acid binding—and a unique zero-padded seven digit identifier (often called the term accession or term accession number) prefixed by GO:, e.g. GO:0005125 or GO:0060092. The numerical portion of the ID has no inherent meaning or relation to the position of the term in the ontologies. Ranges of GO IDs are assigned to individual ontology editors or editing groups, and can thus be used to trace who added the term.
3) OBO Foundry:
 a) OBO Foundry Identifier Policy - http://www.obofoundry.org/id-policy.shtml
  i) “OBO format uses a string of the form [prefix]:nnnnnnn”
  ii) This policy pertains to ontologies that have been submitted to the OBO - the Open Biomedical Ontologies, also called the OBO Library and ontologies that are part of the OBO Foundry.
  iii) The OBO Foundry Identifier Policy also outlines the URI syntax that is applicable to all the Foundry-compliant ontologies; i.e. FOUNDRY_OBO_URI ::= "http://purl.obolibrary.org/obo/" IDSPACE "_" LOCALID
4) ENVO:
 a) Could not find a specific page that described the ID policy; however, the examples on the following page seemed to suggest that number of digits for the ID is mostly 8, but there is also an example with 7 digits. - http://www.environmentontology.org/annotation-guidelines

Supplementary Notes
-------------------
1) For the DataONE PROV group (https://github.com/DataONEorg/sem-prov-ontologies/blob/master/provenance/ProvONE/v1/owl/provone.owl), the following is the URI syntax that is assigned to the ontological terms:

	https://purl.org/dataone/ontologies/provenance/ProvONE/v1/owl/provone.owl#termname
	
Example: https://purl.org/dataone/ontologies/provenance/ProvONE/v1/owl/provone.owl#Program

 a) This format is similar to the OBO legacy URI syntax shown in the OBO Foundry Identifier Policy page (http://www.obofoundry.org/id-policy.shtml):
  i) http://purl.org/obo/owl/" IDSPACE "#" IDSPACE "_" LOCALID

Notes on Defining New or Modifying Existing Concepts
----------------------------------------------------
1) OBI: 
 a) OBI Term Guidelines - http://obi-ontology.org/page/OBI_term_guidelines
  i) Categories: Existing Terms and New Terms
   1) Existing Terms: If a term is close enough but would like to make additions or changes to is, a new ticket needs to be submitted via the following link (a SourceForge account is required): https://sourceforge.net/auth/?return_to=%2Fp%2Fobi%2Fobi-terms%2Fnew%2F
   2) New Terms: If a term cannot be located but is within OBI’s scope of biomedical investigation, a new term can be suggested also via the same link as indicated in item a.i.1.
 b) OBI Adding New Term Policy - http://obi-ontology.org/page/OBI_Adding_New_Term_Policy
  i) Add new term: the following are the minimal required metadata that need to be provided with the new term:
   1) Definition
   2) Definition Source
   3) Definition Editor
   4) Editor Preferred Term
   5) Curation Status
  ii) Add definition taken or modified from an external ontology term:
   1) Recommended to provide the external ontology term ID. 
  iii) Add synonym:
   1) Use “alternative term”.
    a) “There can be many alternative term annotations for a given term in OBI.” (http://obi-ontology.org/page/OBI_term_guidelines)
 c) Rules from OBO Foundry should also be followed.
 d) OBI Term Tracker: http://sourceforge.net/p/obi/obi-terms/
2) GO:
 a) Submitting Term Suggestions to GO - http://geneontology.org/page/submitting-term-suggestions-go
  i) “If you find that the term you would like to use for searching or annotation is not in GO, try using TermGenie to add it to our resource. If the template you need is not available, please enter your request using Sourceforge (SF).”
 b) Obsolete Terms:
  i) “Occasionally, a term is added to GO that is out of scope, misleadingly named or defined, or describes a concept that would be better represented in another way and needs to be removed from the published ontology. In these cases, the term and ID still persist in the ontology, but the term is tagged as obsolete, and all relationships to other terms are removed. A comment is added to the term, detailing the reason for the obsoletion and tags are also added that specify replacement terms. See the OBO file format specification for more information.” (http://geneontology.org/page/ontology-structure#obs).
 c) Annotation Tools, Downloads, Contributing to the GO - http://geneontology.org/page/annotation-tools-downloads-contributing-go
  i) Contributing to GO:
   1) “Corrections and alterations are suggested by, and solicited from, members of the research and annotation communities, as well as by those directly involved in the GO project.” 
   2) “Suggested edits are reviewed by the ontology editors, and implemented where appropriate.”
3) OBO Foundry:
 a) No specific terms and conditions were found.  However, the following web page shows the “Naming Conventions for the OBO Foundry”.
  i) http://wiki.obofoundry.org/wiki/index.php/Naming#New_conventions_under_investigation
4) ENVO:
 a) If you would like to request new terms and synonyms, suggest an enhancement, or report a defect, please use our GitHub issue tracker.
  i) GitHub issue tracker - https://github.com/EnvironmentOntology/envo/issues/
 b) “Unlike biomes, ecoregions are geographically defined entities. ENVO's sister project, GAZ, contains terms for instances of ecoregions (e.g. Beringia lowland tundra). Requests for new terms should be directed to GAZ. ENVO will only contain this top-level class.” (http://bioportal.bioontology.org/ontologies/ENVO?p=classes&conceptid=root)
  i) Could not find any information on project GAZ.
 c) ENVO Term Tracker: http://sourceforge.net/p/obo/environmental-ontology-envo-term-requests/
 d) Annotation guidelines - http://environmentontology.org/annotation-guidelines

Footnotes
---------
1.     Definition of Recall: can be found under the “SEM-DISCO Test Procedure” (https://docs.google.com/document/d/1EmR58pgzoNirsHxdOjVGLvjBHkklpG0yC1Ttmy2K7Y0/edit?usp=sharing).
2.     Definition of Precision: can be found under the “SEM-DISCO Test Procedure” (https://docs.google.com/document/d/1EmR58pgzoNirsHxdOjVGLvjBHkklpG0yC1Ttmy2K7Y0/edit?usp=sharing).
