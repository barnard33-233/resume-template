// themes

#let font = (
    serif: "Times New Roman",   //serif
    sans-serif: "Arial",   // sans-serif
    cjk: "Noto Serif CJK",
)

#let theme-color = rgb(127, 127, 127)

#let sidebar(side, content, withLine: true, sideWidth: 12%) = style(styles => {
  let sideSize = measure(side, styles)
  let contentSize = measure(content, styles)
  let height = calc.max(sideSize.height, contentSize.height) + 0.5em
  grid(
    columns: (sideWidth, 0%, 1fr),
    gutter: (0.75em),
    {
      set align(right)
      v(0.25em)
      side
      v(0.25em)
    },
    if (withLine) {line(end: (0em, height), stroke: 0.05em)},
    {
      v(0.25em)
      content
      v(0.25em)
    },
  )
})

#let item(
  title,
  desc,
) = {
  v(0.25em)
  grid(
    columns: (30%, 1fr, auto),
    gutter: (0em),
    title, desc
  )
}