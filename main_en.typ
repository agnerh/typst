#import "./template/layout.typ"
#import "./template/theme.typ"
#import "./template/components.typ"

#show: layout.cv-layout

#components.cover-page(
  "/images/profile.jpg",
  [
    = Henrik Agner
    #components.bold[Solution architecht / Tech lead / Senior fullstack developer]

    Henrik is a highly experienced Solution Architect, Tech Lead, and Senior Full-Stack Developer with extensive expertise in leading technical teams and driving successful projects. With over 13 years of experience and a passion for modern technologies and platforms, he excels in designing and implementing innovative solutions that ensure high performance, scalability, and efficiency. He is a natural leader who thrives in dynamic environments, with expertise spanning cloud platforms, full-stack development, and solution architecture.

    Henrik is highly comfortable with web development, system development, architecture, and technical leadership across both frontend and backend.
  ])

= Experience
#line(length: 100%, stroke: 1pt + theme.primary-color)

#let positions = json("./data/positions_main_en.json");

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