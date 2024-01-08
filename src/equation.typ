#let equation-counter = counter("equation")
#equation-counter.update((0, 0, 0))
#let equation-state = state("equations", (heading-numbers: none))

#let equation(body) = {
  set math.equation(numbering: "(1.1)")

  show math.equation.where(block: true): it => {
    locate(loc => {
      // Get heading numbers at current location
      let heading-numbers = counter(heading).at(loc)

      // Reset equation counter if heading numbers have changed
      // if equation-state.at(loc).heading-numbers != heading-numbers {
      //   equation-counter.update((..heading-numbers, 0))
      // }

      // Update state
      // equation-state.update((heading-numbers: heading-numbers))

      // Increment equation number
      equation-counter.step(level: 3)

      counter(math.equation).update(equation-counter.at(loc))
    })

    // Update `counter(math.equation)`
    // so that the euqation number will be properly displayed
    locate(loc => {
      // counter(math.equation).update(equation-counter.at(loc))
    })
    // Equation content
    it
  }

  // The rest of the document
  body
}
