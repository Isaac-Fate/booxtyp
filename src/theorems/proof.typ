#import "../utils.typ": color-schema

#let proof(content) = {
  block(width: 100%)[
    // The word "Proof" in italic
    #text(style: "italic", fill: color-schema.orange.primary)[*Proof*]
    // A small space between the word "Proof" and the main content
    #h(0.5em)
    // Main content of the proof
    #content
    // A filled square at the end indicating the end of the proof, Q.E.D.
    #align(end)[$square.filled$]
  ]
}