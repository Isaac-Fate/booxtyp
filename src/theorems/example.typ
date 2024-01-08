#import "../utils.typ": color-schema
#import "../counters.typ": example-counter

#let example(content) = {
  // Increament the example counter
  example-counter.step()

  // Construct the example number
  let example-number = locate(loc => {
    // Get the chapter and section numbers
    let numbers = counter(heading).at(loc)

    // Push the example number to the end
    numbers.push(example-counter.at(loc).first())

    // The complete example number
    let number = numbering("1.", ..numbers)

    return number
  })

  text(fill: color-schema.green.dark)[
    *Example #example-number*
  ]
  h(0.5em)
  content
}