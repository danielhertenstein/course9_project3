library(shiny)
library(leaflet)
library(rgdal)

weather_data <- read.csv('data/state_data.csv')
states <- readOGR("data/state_shapes/cb_2015_us_state_500k.shp", layer = "cb_2015_us_state_500k", verbose = FALSE)

shinyServer(function(input, output) {
  output$the_map <- renderLeaflet({
    temp_min <- input$temperature[1]
    temp_max <- input$temperature[2]
    sun_min <- input$sun[1]
    sun_max <- input$sun[2]
    states_to_highlight <- subset(weather_data, Temp >= temp_min & Temp <= temp_max & Sun >= sun_min & Sun <= sun_max)
    states_to_highlight <- subset(states, states$STUSPS %in% states_to_highlight$Abbrev)
    leaflet(states_to_highlight) %>%
      addTiles() %>%
      setView(lat = 38, lng = -98, zoom=4) %>%
      addPolygons(
        stroke = FALSE, fillOpacity = 0.5, smoothFactor = 0.5)
  })
})
