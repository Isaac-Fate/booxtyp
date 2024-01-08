#import "sectioning.typ": chapter, section
#import "equation.typ": equation
#import "reference.typ": reference

#let book(body, toc-title: "Table of Contents") = {
  set page(numbering: "- 1 -")

  outline(title: toc-title, depth: 3, indent: auto)
  pagebreak()

  show: chapter
  show: section
  show: equation
  show: reference

  body
}

