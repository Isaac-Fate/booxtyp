#import "sectioning.typ": chapter, section
#import "equation.typ": equation

#let book(body, toc-title: "Table of Contents") = {
  set page(numbering: "- 1 -")

  outline(title: toc-title, depth: 3, indent: auto)
  pagebreak()

  show: chapter
  show: section
  show: equation
  body
}

