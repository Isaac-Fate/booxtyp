#import "../src/lib.typ": *

#show: book

#cover([My Book], image("coffee.jpg"), authors: ("Isaac Fei",))

#preface(
  )[
This is A Typst template for books.

You can create a preface using `preface` template:

```typ
#preface()[
  Your preface goes here...
]
```

The preface chapter will not be numbered or outlined in the table of contnets.

You may change the title of the preface:

```typ
#preface(title: [My Preface])[
  Your preface goes here...
]
```

I generated a long paragraph of lorem ipsum text below so that you can see the
page number at the top of the page. Note that the page number is Roman numeral
before the first chapter.

#lorem(1500)
]

#outline()

= Introduction

== Theorems, Prompositions, lemmas, and Corollaries

@thm:1 is a very important equation.

#theorem(title: "Fermat's Last Theorem")[
  No three positive integers $a$, $b$, and $c$ can satisfy the equation
  $ a^n + b^n = c^n $
  for any integer value of $n$ greater than $2$.
]<thm:1>

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

We say that a linear operator $T: V -> W$ is #index(entry: [self-adjoint operators])[self-adjoint] if
it equals to its own adjoint, i.e., if $T^* = T$.

== Figures

@fig:1 is a cup of coffee.

#figure(image("coffee.jpg"), caption: "A cup of coffee")<fig:1>

#figure(image("coffee.jpg"), caption: "Another cup of coffee")

#index-page()
