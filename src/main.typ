#import "lib.typ": *

// #show ref: it => {
//   let eq = math.equation
//   let element = it.element

//   if element == none {
//     return it
//   }

//   if element.func() == eq {
//     // Override equation references
//     return numbering(element.numbering, ..equation-counter.at(element.location()))
//   }

//   if element.func() == figure and element.kind == "theorem" {
//     // Override theorem references
//     return [
//       #element.supplement
//       #numbering(element.numbering, ..theorem-counter.at(element.location()))
//     ]
//   }

//   it
// }
#show figure.where(kind: "Theorem"): it => it.body
#show figure.where(kind: "Proposition"): it => it.body
#show figure.where(kind: "Definition"): it => it.body
#show: book

= Introduction

@thm:5 is a very important theorem.

@def:1 is the definition of the exponential function.

@def:2 is the definition of the exponential function.

@pro:1 is a very important proposition.

== First Section

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]<def:1>

@eq:1 is a very important equation.

#theorem(title: "Important theorem")[
  This is a theorem.
  $ e^x = lim_(n -> oo) a $
]

#proposition(title: "Important theorem ")[
  This is a theorem.
  $ e^x = lim_(n -> oo) a $
]<pro:1>

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]<def:2>

#theorem(title: "Important theorem ")[
  This is a theorem.
  $ e^x = lim_(n -> oo) a $
]<thm:5>

@eq:1 is a very important equation.

== Second Section

$ T: V -> W $

$ T: V -> W $<eq:1>

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]

