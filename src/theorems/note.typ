#import "../utils.typ": color-schema

#let note(content) = {
  text(fill: color-schema.orange.primary)[
    #emoji.notepad *Note*
  ]
  h(0.5em)
  text(style: "italic")[
    #content
  ]
}