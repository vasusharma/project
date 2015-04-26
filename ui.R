library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Prediction of Stopping Distance of Car vs it's speed"),
    
    sidebarPanel(
      numericInput('SpeedOfCar', 'Speed of Car mph', 43, min = 5, max = 120, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered the speed of car as'),
      verbatimTextOutput("inputValue"),
      h4('A car at this speed is expected to stop after the following distance in ft. '),
      verbatimTextOutput("prediction")
    )
  )
)
