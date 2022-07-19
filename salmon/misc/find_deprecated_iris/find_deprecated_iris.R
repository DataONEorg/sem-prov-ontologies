library(dataone)
library(xml2)

knb <- MNode("https://knb.ecoinformatics.org/knb/d1/mn/v2")
iris <- readLines("./deprecated_iris.txt")

get_instances_single <- function(node, pid, iri) {
  message("Getting instances of ", iri, " in ", pid)

  out_path <- tempfile()
  writeBin(getObject(node, pid), out_path)
  xml_doc <- xml2::read_xml(out_path)

  annotations <- xml2::xml_find_all(xml_doc, "//annotation")

  matching_annotations <- Filter(function(annotation) {
    iri == xml2::xml_text(xml2::xml_find_first(annotation, "valueURI"))
  }, annotations)

  # Note: This assumes attribute and just go with it
  unique(vapply(matching_annotations, function(annotation) {
    parent <- xml2::xml_parent(annotation)
    attributeName <- xml2::xml_text(xml2::xml_find_first(parent, "attributeName"))
    attributeDefintion <- xml2::xml_text(xml2::xml_find_first(parent, "attributeDefinition"))

    propertyURI <- xml2::xml_find_first(annotation, "propertyURI")
    valueURI <- xml2::xml_find_first(annotation, "valueURI")

    propertyURILabel <- xml2::xml_attr(propertyURI, "label")
    propertyURIValue <- xml2::xml_text(propertyURI)
    valueURILabel <- xml2::xml_attr(valueURI, "label")
    valueURIValue <- xml2::xml_text(valueURI)

    # Create an easy to survey string describing the attribute and the
    # annotation
    paste0(attributeName, " (", attributeDefintion, ") <-> ", valueURILabel, " (", valueURIValue, ")")
  }, "", USE.NAMES = FALSE))
}

get_instances <- function(node, pid, iris) {
  unique(vapply(iris, function(iri) {
    get_instances_single(node, pid, iri)
  }, ""))
}

debug_iri <- function(node, iri) {
  message("Debugging ", iri)

  ids <- unlist(query(
    node,
    list(
      q = paste0('sem_annotation:"', iri, '"'),
      fl = "identifier"
    )
  ), use.names = FALSE)

  result <- unique(unlist(lapply(ids, function(id) {
    get_instances(node, id, iri)
  })))

  result
}

debug_iris <- function(node, iris) {
  result <- lapply(iris, function(iri) {
    debug_iri(knb, iri)
  })

  names(result) <- iris

  result
}


