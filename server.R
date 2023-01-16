library(shiny)
library(leaflet)
library(httr)
library(jsonlite)
library(leaflet.extras)

# Create a marker with a triangle icon
iss_icon <- awesomeIcons(
  icon = 'ios-close',
  iconColor = 'black',
  library = 'ion',
  markerColor = 'blue'
)

server <- function(input, output) {
  
  # Create the map
  output$map <- renderLeaflet({
    leaflet() %>% addTiles()
  })
  
  # Reactive function to update the marker location
  location <- reactive({
    response <- GET("http://api.open-notify.org/iss-now.json")
    result <- jsonlite::fromJSON(content(response, as = "text"))
    location <- result$iss_position
    data.frame(lat = as.numeric(location$latitude), lon = as.numeric(location$longitude))
  })
  
  
  # Observe the location and update the marker
  observe({
    leafletProxy("map", data = location()) %>%
      clearMarkers() %>%
      addMarkers(icon = iss_icon)
  })
  
  # Update the location every 5 seconds
  autoInvalidate <- reactiveTimer(5000)
}
