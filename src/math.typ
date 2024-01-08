// Inner product
#let inprod(vec1, vec2) = {
  $lr(angle.l vec1, vec2 angle.r)$
}

#let angbrkt(..content, sep: ",") = {
  $lr(angle.l #(content.pos().slice(0).join(sep)) angle.r)$
}
