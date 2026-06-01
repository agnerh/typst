#import "./template/layout.typ"
#import "./template/theme.typ"
#import "./template/components.typ"

#show: layout.cv-layout

#components.cover-page(
  "/images/profile.jpg",
  [
    = Henrik Agner
    #components.bold[Lösningsarkitekt / Tech lead / Senior backendutvecklare]

    Henrik är en erfaren backendutvecklare och teknisk ledare med fokus på skalbara tjänster, säkra integrationer och robusta API-lager.

    Han har lång erfarenhet av att designa och implementera backendarkitektur i .NET, molntjänster och integrationsplattformar. Henrik trivs med att driva tekniska lösningar som har hög prestanda, stabilitet och bra kopplingar till frontend.

    I backendprojekt tar han ansvar för arkitektur, datamodellering och servicekvalitet, så att systemet fungerar bra både internt och för slutanvändarna.
  ])

= Erfarenheter
#line(length: 100%, stroke: 1pt + theme.primary-color)

#let positions = json("./data/positions_backend_sv.json");

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
