#import "colors.typ": color-schema
#import "equation.typ": equation-counter
#import "counters.typ": theorem-counter, definition-counter, example-counter, exercise-counter

#let chapter(body) = {
  // Add a page break
  // Do not add a page break if the chapter is the first one
  // or the previous page is already blank
  pagebreak(weak: true)

  show heading.where(level: 1): it => {
    // Reset counters
    locate(loc => {
      let heading-numbers = counter(heading).at(loc)
      theorem-counter.update((..heading-numbers, 1))
      definition-counter.update((..heading-numbers, 1))
      example-counter.update((..heading-numbers, 1))
      exercise-counter.update((..heading-numbers, 1))
      equation-counter.update((..heading-numbers, 1))
    })

    // Se the text style
    set text(fill: color-schema.blue.dark, size: 2.5em)

    // Get the chapter number
    let chapter-number = locate(loc => {
      let numbers = counter(heading).at(loc)
      let number = numbering("1", ..numbers)
      return number
    })

    [Chapter #chapter-number]
    parbreak()
    it.body

    // Add some space below the title
    v(1.7em)
  }

  // The rest of the document
  body
}

#let section(body) = {
  set heading(numbering: "1.1")

  show heading.where(level: 2): it => {
    // Reset counters
    locate(loc => {
      let heading-numbers = counter(heading).at(loc)
      theorem-counter.update((..heading-numbers, 1))
      definition-counter.update((..heading-numbers, 1))
      example-counter.update((..heading-numbers, 1))
      exercise-counter.update((..heading-numbers, 1))
      equation-counter.update((..heading-numbers, 1))
    })

    // Se the text style
    set text(fill: color-schema.blue.dark, size: 16pt)

    it

    // Add some space below the title
    v(1.7em)
  }

  // The rest of the document
  body
}
