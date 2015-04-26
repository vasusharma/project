library(shiny)
library(datasets)
StoppingDistance <- function(SpeedOfCar) 
{
  fm <- lm(dist ~ poly(speed, 3), data = cars)
  StopDist <- predict(fm, data.frame(speed = SpeedOfCar))
  return(StopDist)
}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$SpeedOfCar})
    output$prediction <- renderPrint({StoppingDistance(input$SpeedOfCar)})
  }
)