library(shiny)
library(leaflet)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Decide Where to Live Based on Temperature and Sun"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      h4("This web application helps you decide what state to live in based on its average temperature and average amount of sun during the day."),
      h4("Move the sliders on the left for temperature and percentage of sunniness to set ranges that you deem acceptable to live in. The map on the right will update, highlighing the states whose averages fall within your ranges. Then all that's left is for you to pack up and move!"),
      h4("Data for this application comes from the NOAA National Climatic Data Center of the United States."),
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
