#import "../src/lib.typ": *

#show figure.where(kind: "Theorem"): it => it.body
#show figure.where(kind: "Proposition"): it => it.body
#show figure.where(kind: "Definition"): it => it.body
#show figure.where(kind: "Example"): it => it.body
#show figure.where(kind: "Exercise"): it => it.body
#show figure.where(kind: "Note"): it => it.body

#show: book

#pagebreak()

= Introduction

@thm:5 is a very important theorem.

@def:1 is the definition of the exponential function.

@def:2 is the definition of the exponential function.

@pro:1 is a very important proposition.

== Theorems, Prompositions, lemmas, and Corollaries

#theorem[
  #lorem(50)
]

#proof[
  #lorem(200)
]

#theorem(title: "Fermat's Last Theorem")[
  No three positive integers $a$, $b$, and $c$ can satisfy the equation
  $ a^n + b^n = c^n $
  for any integer value of $n$ greater than $2$.
]

#proof[
  I have discovered a truly marvelous proof of this, which this margin is too
  narrow to contain.
]

#theorem(
  title: "Rank-Nullity Theorem",
)[
  Let $T: V -> W$ be a linear map between two finite-dimensional vector spaces.
  Then
  $ dim V = dim ker T + dim im T $
]

== Definitions

#definition[
  The number $e$ is defined as
  $ e := sum_(n = 0)^oo 1 / n! $
]

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]<def:1>

@eq:1 is a very important equation.

== Exercises and Solutions

#exercise[
  Solve the following differential equation with initial conditions $y(0) = 0$ and $y'(0) = 1$:
  $ y'' + y = 0 $
]<ex:1>

#solution[
  The solution is $y(x) = sin(x)$.
]

#theorem(title: "Important theorem")[
  This is a theorem.
  $ e^x = lim_(n -> oo) a $
]

#proof[
  #lorem(1000)
]

#example[
  #lorem(100)
]

#note[
  Hmmm... I wonder if this is true.
]

#exercise[

  This is an exercise.]

#exercise[
  This is an exercise.
]<ex:1>

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

$ T: V -> W $<eq:1>

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]

= Second Chapter

= Third Chapter
