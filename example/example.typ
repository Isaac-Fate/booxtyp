#import "../src/lib.typ": *

#show: book

#outline()

= Introduction

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

== Exercises and Solutions

#exercise[
  Solve the following differential equation with initial conditions $y(0) = 0$ and $y'(0) = 1$:
  $ y'' + y = 0 $
]

#solution[
  The solution is $y(x) = sin(x)$.
]

#exercise[

]

#example[
  #lorem(100)
]

#note[
  Hmmm... I wonder if this is true.
]

is a very important equation.

#definition[
  The exponential function, denoted by $exp(x)$, is defined as
  $ exp(x) := sum_(n = 0)^oo x^n / n! $
]

We say that a linear operator $T: V -> W$ is #index(entry: [Self-Adjoint Operators])[self-adjoint] if
it equals to its own adjoint, i.e., if $T^* = T$.

= Basics

#heading(numbering: none)[Indices]

#columns(2)[
  #make-index()
]

