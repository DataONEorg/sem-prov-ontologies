Created On: 2015-04-08                                                   	Created By: Sophie Hou

Change Revisions:
-----------------
Last Modified Date        Last Modified Person            Changes
2015-04-08                Sophie Hou                      Initial creation of the document
2015-04-13                Sophie Hou                      Updated the document based on Margaret’s feedback posted on 2015-04-10.
2015-04-14                Margaret O’Brien and Sophie Hou Editorial updates.

DataONE SEM Group - Ontological Synonyms 
==============
 
Purpose
-------
This document outlines the objectives and describes the procedures for examining terms that could be synonyms of classes in the DataONE carbon cycle ontology.  A list of 7610 terms summarizing user input to search forms in the US-LTER data catalog from 2007-2015 were examined with this procedure, and those results are included.  
 
Background
----------
DataONE is developing an ontology to model the knowledge related to primary production research in order to demonstrate improvement to understandability and discoverability of DataONE datasets through measuring recall (see footnote 1) and precision (see footnote 2).  In particular, enhancing the coverage of knowledge with synonymy relationships is expected to improve the query recall.   
Identification of synonymous terms needs to be conducted as the first step.  While many sources of terms are available, the first group of terms examined is comprised of  user-input to search forms in the LTER data catalog from 2007 to 2015.  These terms were actual user queries, and, reflected what the users were interested in searching.  The synonym rules in this document were developed with the  LTER Search Form input terms, and we anticipate that the overall approach could be applied to terms from other sources as well.
 
Objectives
----------
Determine which of these terms in the LTER Search Form could be considered as synonyms to the terms defined in the DataONE carbon cycle ontology (“candidate” terms).
Evaluate candidate terms and add to the carbon cycle ontology either as new classes or with annotations using one of the following four relationship: hasExactSynonym, hasBroadSynonym, hasNarrowSynonym, and hasRelatedSynonym

Methodology/Process
-------------------
Archive the source list of LTER data catalog search terms (2007 and 2015, Metacat).
The list has been generated and checked into GitHub (https://raw.githubusercontent.com/DataONEorg/sem-prov-ontologies/master/observation/resources/lter_search_strings_2007_2015/metacatQueryAuditSimple.lis).
There is a total of 7610 terms.  
Split the list roughly in half for by the two graduate research student assistants to generate candidate terms for the carbon cycle ontology.
The evaluation criteria for candidates was purposely lenient in order to highlight as many terms as possible as candidate synonyms.  The following is the summary of the evaluation criteria:
Include:
A term that refers to an primary producer (e.g. plant, tree, algae.
A term that indicates a community or ecosystem (e.g. marsh, New York, Shark Slough).
A term that is an acronym of an identifiable identity (e.g. LTER for Long Term Ecological Research).
A term that has been already recognized as being equivalent to a term that is currently in the carbon cycle ontology (e.g. NPP and Net Primary Production).
Disregard:
Misspelling
Plural form of a singular term
Acronym whose full identity cannot be determined for certain.
Exclude:
Any term that is not considered to meet the “Include” or “Disregard” criteria.
If the term is a potential to be a synonym (regardless of the type of synonymous relationship the term might have), it is labeled with “Y” in the adjacent column.
Otherwise, the term is labeled with “N” in the adjacent column.
Evaluate the candidates in a larger group, to provide discussion and broad scientific expertise. Entry into the ontology can be simultaneous. 

Results
-------
The preliminary review highlighted a total of 3118 terms candidate, synonyms or new classes for the carbon cycle ontology.  The review results are summarized in a spreadsheet and checked into GitHub under “resources”.

Footnotes
---------
1.     Definition of Recall: can be found under the “SEM-DISCO Test Procedure” (https://docs.google.com/document/d/1EmR58pgzoNirsHxdOjVGLvjBHkklpG0yC1Ttmy2K7Y0/edit?usp=sharing).
2.     Definition of Precision: can be found under the “SEM-DISCO Test Procedure” (https://docs.google.com/document/d/1EmR58pgzoNirsHxdOjVGLvjBHkklpG0yC1Ttmy2K7Y0/edit?usp=sharing).
