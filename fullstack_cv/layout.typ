#import "theme.typ"

#let cv-layout(body) = {
  // Optional document metadata.
  set document(
    title: "Consultant Profile",
    author: "Henrik Agner <henril.agner1@gmail.com>",
    keywords: ("cv", "resume", "profile", "consultant"),
    date: datetime(year: 2025, month: 12, day: 31),
  )

  // Main page setup.
  set page(
    margin: (
      left: 56pt,
      right: 56pt,
    ),
    header: [
      #grid(
        columns: (1fr, 1fr),
        [
          #align(left)[
            #place(dx: 30pt, dy: -20pt)[
              #box(stroke: rgb(0,0,0), inset: 1pt)[
                #image("ac_logo2.png", width: 45pt, height: 31pt)
              ]
            ]
          ]
        ],
        [
          #align(right)[Agner Consulting]
        ]
      )
    ],
    footer: context[
      #grid(
        columns: (1fr, auto),
        [
          #align(center)[Henrik Agner]
        ],
        [
          #align(right)[#counter(page).display("1 / 1", both: true)]
        ],
      )
    ]
  )

  // Typografy 
  set text(
    font: "Source Sans Pro",
    size: 11pt,
  )

  show heading.where(level: 1): it => [
    #set text(size: 16pt, weight: "bold", fill: theme.primary-color)
    #it
  ]

  body
}

