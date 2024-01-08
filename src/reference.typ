#import "counters.typ": theorem-counter, definition-counter, example-counter, exercise-counter, equation-counter

#let reference(body) = {
  show ref: it => {
    let eq = math.equation
    let element = it.element

    if element == none {
      return it
    }

    if element.func() == eq {
      // Override equation references
      return numbering(element.numbering, ..equation-counter.at(element.location()))
    }

    if element.func() == figure and element.kind == "Theorem" {
      // Override theorem references
      return [
        #element.supplement
        #numbering(element.numbering, ..theorem-counter.at(element.location()))
      ]
    }

    if element.func() == figure and element.kind == "Definition" {
      // Override definition references
      return [
        #element.supplement
        #numbering(element.numbering, ..definition-counter.at(element.location()))
      ]
    }

    if element.func() == figure and element.kind == "Example" {
      // Override example references
      return [
        #element.supplement
        #numbering(element.numbering, ..example-counter.at(element.location()))
      ]
    }

    if element.func() == figure and element.kind == "Exercise" {
      // Override exercise references
      return [
        #element.supplement
        #numbering(element.numbering, ..exercise-counter.at(element.location()))
      ]
    }

    it
  }

  // The rest of the document
  body
}