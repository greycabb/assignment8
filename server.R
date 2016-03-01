# Michael Lew
# INFO 498F
# Assignment 8: Shiny application

library(plotly)
library(shiny)
library(dplyr)

source("scripts/scatter_plot.R")

# Get the built in iris dataset
data(iris)

shinyServer(function(input, output) {
  
  # Output scatter plot based on values input into the widgets
  output$scatter <- renderPlotly({
    scatter_plot(iris, input$xvar, input$yvar, input$colorsvar)
  })
})