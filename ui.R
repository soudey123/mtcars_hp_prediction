# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
# Find out more about building applications with Shiny here:
#    http://shiny.rstudio.com/

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict horsepower from mpg"),
  
  # Sidebar with a slider input for determining the MPG of the car
  #Checkbox inputs to determine which liner model to be used for prediction and plotting
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG","What is the MPG of the car?", min = 10, max = 35, value = 20),
      checkboxInput("showmodel1","Hide/Show the model 1", value = TRUE),
      checkboxInput("showmodel2","Hide/Show the model 2", value = TRUE),
      submitButton("submit")
    ),
    
    # Show a plot of the linear distribution based on MPG and linear models
    mainPanel(
      plotOutput("plot1"),
      h3("Predicted horsepower from model 1"),
      textOutput("pred1"),
      h3("Predicted horsepower from model 2"),
      textOutput("pred2")
    )
  )
))
