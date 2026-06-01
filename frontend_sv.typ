#import "./template/layout.typ"
#import "./template/theme.typ"
#import "./template/components.typ"

#show: layout.cv-layout

#components.cover-page(
  "/images/profile.jpg",
  [
    = Henrik Agner
    #components.bold[Lösningsarkitekt / Tech lead / Senior frontend-utvecklare]

    Henrik är en erfaren frontend-utvecklare och teknisk ledare med stark känsla för användarupplevelse, gränssnittsdesign och moderna webbplattformar.

    Med över 13 års erfarenhet bygger han interaktiva, tillgängliga och responsiva gränssnitt med fokus på React, NextJS, Angular och moderna verktyg. Han kombinerar designkänsla med teknisk förståelse för att skapa lösningar som både användare och utvecklingsteam uppskattar.

    Henrik trivs bäst i tvärfunktionella team där han kan driva frontendarkitektur, förbättra utvecklingsflöden och säkra att användarens behov alltid står i centrum.
  ])

= Erfarenheter
#line(length: 100%, stroke: 1pt + theme.primary-color)

#let positions = json("./data/positions_frontend_sv.json");

#for position in positions {
  components.position(position)
}

= Utbildning
#line(length: 100%, stroke: 1pt + theme.primary-color)

#components.education(
  "2004",
  "2007",
  "IT - Tekniskt program med fokus på programmering och datornätverk (Gymnasium) Thorhildsplan Gymnasium"
)

= Språk
#line(length: 100%, stroke: 1pt + theme.primary-color)

#grid(
  columns: (1fr, 1fr),
  align: (left, right),
  column-gutter: 2em,
  row-gutter: 1em,
  "Svenska",
  "Modersmål",
  "Engelska",
  "Flytande"
)
