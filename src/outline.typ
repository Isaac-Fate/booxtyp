#import "colors.typ": color-schema

#let outline-rules(body) = {
  set outline(title: [Contents], depth: 3, indent: auto)

  show outline.entry.where(level: 1): it => {
    // Add some space above
    v(12pt, weak: true)

    // Entry style
    text(
      weight: "bold",
      size: 12pt,
      fill: color-schema.blue.dark,
    )[Chapter #smallcaps(it)]
  }

  // The rest of the document
  body
}