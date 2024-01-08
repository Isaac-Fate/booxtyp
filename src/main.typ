#import "lib.typ": *

// #show: book

#show ref: it => {
  let eq = math.equation
  let element = it.element

  if element == none {
    return it
  }

  if element.func() == eq {
    // Override equation references
    return numbering(element.numbering, ..equation-counter.at(element.location()))
  }

  if element.func() == figure and element.kind == "theorem" {
    // Override theorem references
    return [
      #element.supplement
      #numbering(element.numbering, ..theorem-counter.at(element.location()))
    ]
  }

  it
}

#let t(body) = {
  figure(
    block(stroke: color-schema.orange.primary, inset: 6pt, radius: 5pt)[#body],
    kind: "theorem",
    outlined: false,
    supplement: "aaa",
    numbering: "1.1",
  )
}

#show figure.where(kind: "theorem"): it => it.body
#show: book

= Introduction

#t[
  Hello world
]<thm:2>

@thm:5 is a very important theorem.

@pro:1 is a very important proposition.

== First Section

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]

@eq:1 is a very important equation.

#theorem(title: "Important theorem ")[
  This is a theorem.
  $ e^x = lim_(n -> oo) a $
]

#proposition(title: "Important theorem ")[
  This is a theorem.
  $ e^x = lim_(n -> oo) a $
]<pro:1>

#theorem(title: "Important theorem ")[
  This is a theorem.
  $ e^x = lim_(n -> oo) a $
]<thm:5>

// #let thmref(label) = {
//   locate(loc => {
//     let metadata-element = query(metadata, loc).first()
//     let target-location = metadata-element.location()
//     let identifier = metadata-element.value

//     [#identifier ]
//     numbering("1.1", ..theorem-counter.at(target-location))
//   })
// }

@eq:1 is a very important equation.

== Second Section

$ T: V -> W $

$ T: V -> W $<eq:1>

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]

