#import "./template/layout.typ"
#import "./template/theme.typ"
#import "./template/components.typ"

#show: layout.cv-layout

#components.cover-page(
  "/images/profile.jpg",
  [
    = Henrik Agner
    #components.bold[Lösningsarkitekt / Tech lead / Senior fullstack-utvecklare]

    Henrik är en mycket erfaren Lösningsarkitekt, Tech Lead och Senior Fullstack-utvecklare med en bred erfarenhet av att leda tekniska team och driva framgångsrika projekt. 

    Med över 13 års erfarenhet och en passion för modern teknik och plattformar har Henrik stor erfarenhet av att designa och implementera innovativa lösningar som säkerställer hög prestanda, skalbarhet och effektivitet. Han är en naturlig ledare som trivs i dynamiska miljöer och hans expertis sträcker sig över både molnplattformar, fullstack-utveckling och lösningsarkitektur. 

    Henrik ser sig själv som väldigt bekväm med både webbutveckling, systemutveckling, arkitektur och teknisk leding inom både Front End och Back End. 
  ])

= Erfarenheter
#line(length: 100%, stroke: 1pt + theme.primary-color)

#let positions = json("./data/positions_main_sv.json");

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