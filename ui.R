library(leaflet)
ui <- fluidPage(
  tags$div(style = "text-align: center;",
           tags$h1("International Space Station Tracker",style = "font-size:40px;")),
  leafletOutput("map", width = "100%", height = "600px"),
  tags$div(style = "text-align: center;",
           tags$p("Refresh this page to update the location.",style = "font-size:15px;")),
  tags$div(style = "font-family: 'Montserrat', sans-serif; font-size: 20px; text-align: center; position: fixed; bottom: 0; width: 100%; background-color: #f2f2f2;",
           "Made in R by 4bdul4ziz")
)
