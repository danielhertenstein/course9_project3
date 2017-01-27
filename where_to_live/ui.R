library(shiny)
library(leaflet)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Decide Where to Live Based on Temperature and Sun"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("temperature", label = h3("Acceptable Temperature"), min = 40, 
                  max = 71, value = c(40, 71)),
      sliderInput("sun", label = h3("Acceptable Percentage of Sunniness"), min = 46, 
                  max = 85, value = c(46, 85))
    ),
    mainPanel(
      leafletOutput("the_map")
    )
  )
))
