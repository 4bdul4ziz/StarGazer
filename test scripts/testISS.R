library(leaflet)
library(httr)
library(jsonlite)

# Create the map
map <- leaflet() %>% addTiles()

# Add the ISS icon
iss_icon <- awesomeIcons(
  icon = 'ios-close',
  iconColor = 'black',
  library = 'ion',
  markerColor = 'blue'
)
while (TRUE) {
  # Make a request to the ISS location API
  response <- GET("http://api.open-notify.org/iss-now.json")
  result <- jsonlite::fromJSON(content(response, as = "text"))
  
  # Extract the ISS location
  location <- result$iss_position
  lat <- as.numeric(location$latitude)
  lon <- as.numeric(location$longitude)
  
  # Output the latitude and longitude to the console
  cat("Latitude: ", lat, "\n")
  cat("Longitude: ", lon, "\n")
  
  
  # Clear the previous marker
  map <- map %>% clearMarkers()
  
  # Update the ISS location on the map
  map <- map %>% addMarkers(lng = lon, lat = lat, icon = iss_icon)
  map # Display the map
  show(map)
  
  # Refresh every 5 seconds
  Sys.sleep(5)
}
