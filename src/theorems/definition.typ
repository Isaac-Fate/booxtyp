#import "new-theorem-template.typ": new-theorem-template, new-theorem-state
#import "../colors.typ": color-schema

#let definition-state = new-theorem-state("definition")

#let definition = new-theorem-template(
  "Definition",
  fill: color-schema.green.light,
  stroke: color-schema.green.primary,
  theorem-state: definition-state,
)

