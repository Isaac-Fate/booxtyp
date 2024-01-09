#import "page-header.typ": page-header-rules
#import "sectioning.typ": chapter, section
#import "equation.typ": equation
#import "reference.typ": reference

#let book(body, toc-title: "Table of Contents") = {
  outline(title: toc-title, depth: 3, indent: auto)
  pagebreak()

  show: page-header-rules
  show: chapter
  show: section
  show: equation
  show: reference

  body
}

