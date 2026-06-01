#import "./template/layout.typ"
#import "./template/theme.typ"
#import "./template/components.typ"

#show: layout.cv-layout

#components.cover-page(
  "/images/profile.jpg",
  [
    = Henrik Agner
    #components.bold[Solution architect / Tech lead / Senior frontend developer]

    Henrik is an experienced frontend specialist and technical lead with a strong focus on user experience, interface design and modern web platforms.

    He builds interactive, accessible and responsive web applications using React, Angular, Next.js and modern frontend workflows. Henrik combines design quality with technical execution to create polished user-facing solutions.

    He enjoys collaborating in cross-functional teams to improve frontend architecture, develop reusable components and keep users at the center of every product decision.
  ])

= Experience
#line(length: 100%, stroke: 1pt + theme.primary-color)

#let positions = json("./data/positions_frontend_en.json");

#for position in positions {
  components.position(position)
}

= Education
#line(length: 100%, stroke: 1pt + theme.primary-color)

#components.education(
  "2004",
  "2007",
  "IT - Technical program with a focus on programming and computer networking (Gymnasium) Thorhildsplan Gymnasium"
)

= Language
#line(length: 100%, stroke: 1pt + theme.primary-color)

#grid(
  columns: (1fr, 1fr),
  align: (left, right),
  column-gutter: 2em,
  row-gutter: 1em,
  "Swedish",
  "Mother tongue",
  "English",
  "Fluent"
)
