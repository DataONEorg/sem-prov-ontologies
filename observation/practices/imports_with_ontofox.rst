Created On: 2015-04-08                                                   	Created By: Sophie Hou

Change Revisions:
-----------------

+------------------+--------------------+------------------------------------------------------------------------+
|Last Modified Date|Last Modified Person|Changes                                                                 |
+==================+====================+========================================================================+
|2017-07-14        |Margaret O’Brien    |inital commit                                                           |                  
+------------------+--------------------+------------------------------------------------------------------------+

DataONE SEM Group - Imports with OntoFox 
========================================
 
Purpose
-------
This document describes the procedures for importing using the ontofox service (mireot) 
 
Background
----------
Mireot: 

 
Objectives
----------
  - We have a consistent pattern of imported trees when an import file is replaced
  - Record of which trees were imported in the past

Methodology/Process
-------------------
1) edit the file, eg,  ../ontofox_input_ENVO.txt
2) retrieve the import, e.g curl -s -F file=@"ontofox_input_ENVO.txt" -o ENVO_import_temp.owl http://ontofox.hegroup.org/service.php
3) for bare classes, this is the proposed process (preliminary):
3.1) add high-level classes to ECSO to contain these bare classes. treat as per other ECSO classes (definition, etc)
3.2) move the bare classes to these parents
3.3) later, we may want to import fuller parts of these ontologies, and will need to examine these groups before then.


Results
-------
A new import file, eg, ENVO_import.owl


Footnotes
---------
