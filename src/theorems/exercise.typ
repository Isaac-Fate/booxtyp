#import "../utils.typ": color-schema
#import "../counters.typ": exercise-counter

#let exercise(content) = {
  // Increament the exercise counter
  exercise-counter.step()

  // Construct the exercise number
  let exercise-number = locate(loc => {
    // Get the chapter and section numbers
    let numbers = counter(heading).at(loc)

    // Push the exercise number to the end
    numbers.push(exercise-counter.at(loc).first())

    // The complete exercise number
    let number = numbering("1.", ..numbers)

    return number
  })

  text(fill: color-schema.green.dark)[
    #emoji.hand.write *Exercise #exercise-number*
  ]
  h(0.5em)
  content
}