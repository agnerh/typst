#import "./template/layout.typ"
#import "./template/theme.typ"
#import "./template/components.typ"

#show: layout.cv-layout

#components.cover-page(
  "/images/profile.jpg",
  [
    = Henrik Agner
    #components.bold[Solution architect / Tech lead / Senior backend developer]

    Henrik is an experienced backend specialist and technical leader with a strong focus on scalable services, APIs and system integrations.

    He designs and implements reliable backend architecture that supports modern web platforms and business-critical workflows. Henrik has deep experience in .NET, cloud services and integration platforms.

    In backend projects he takes ownership of architecture, data modeling and service quality to ensure systems are stable, efficient and easy to operate.
  ])

= Experience
#line(length: 100%, stroke: 1pt + theme.primary-color)

#let positions = json("./data/positions_backend_en.json");

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
