#import "../utils.typ": color-schema

#let solution(content) = {
  block(width: 100%)[
    // The word "Proof" in italic
    #text(fill: color-schema.orange.primary)[*Solution*]
    // A small space between the word "Proof" and the main content
    #h(0.5em)
    // Main content of the proof
    #content
    // A filled square at the end indicating the end of the solution
    #align(end)[$square.filled$]
  ]
}