#import "theme.typ"

#let bold(txt) = [
  #text(weight: "bold")[ #txt ]
]

#let tag(txt) = box(
  inset: 1.5pt,
  rect(stroke: 1pt + theme.primary-color, radius: 2.5pt)[ #txt ]
)

#let position(pos) = block(below: 3em)[
  #grid(
    columns: (1fr, 3fr),
    align: (top, top),
    column-gutter: 2em,
    row-gutter: 3em,
    [
      #pos.from - #pos.to
    ],
    [
      #text(size: 13pt)[#bold[#pos.title]]

      #pos.company

      #pos.description

      #for positionTag in pos.tags {
        tag(positionTag)
      }
    ]
  )
]

#let profile-image(img, size) = box(
  width: size,
  height: size,
  radius: 50%,
  clip: true,
  stroke: 1pt + theme.primary-color,
  image(img, width: size, height: size, fit: "cover"),
)

#let cover-page(profile, cover-page-text) = [
  #block(height: 100%, breakable: false)[
    #grid(
      columns: (1fr, 3fr),
      align: (top, top),
      column-gutter: 2em,
      align(left)[#profile-image(profile, 110pt)],
      [
        #cover-page-text
      ]
    )
  ]
]

#let education(from, to, txt) = [
  #grid(
    columns: (3fr, 1fr),
    align: (top, top),
    column-gutter: 2em,
    [ #txt ],
    align(right)[ #from - #to ]
  )
]