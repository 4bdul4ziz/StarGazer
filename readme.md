# StarGazer

This app is a real-time tracker of the International Space Station (ISS) location using the Open-Notify API. The app also provides the current latitude and longitude of the ISS and displays it on a map using the leaflet library.

## Features

- Real-time tracking of the ISS location using the Open-Notify API
- Display of the current latitude and longitude of the ISS on the console
- A marker representing the ISS location on a map
- Refresh the location every 5 seconds

## How to run

1. Clone the repository

```
git clone https://github.com/4bdul4ziz/StarGazer.git
```

2. Install the required packages

```r
install.packages(c("shiny", "leaflet", "httr", "jsonlite"))
```

3. Run the app

```r
shiny::runApp()
```


## Additional notes

- Make sure that you have an internet connection to load the map tiles and access the API.
- While running the app, please make sure that the icon file should be in the same folder as the server.R and ui.R files.
- If you want to change the marker icon you can replace the image file in the code.

## Acknowledgments
- Open-Notify API
- leaflet library
