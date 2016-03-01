# Michael Lew
# INFO 498F
# Assignment 8: Shiny application

#install.packages("shiny")
#install.packages("plotly")

library(shiny)
library(plotly)

shinyUI(fluidPage(
  titlePanel("Iris (Flower) Visualization: Scatter Plot"),
  
  
  # Sidebar layout, containing side panel and main panel
  sidebarLayout(
    
    # Side panel: Request input information
    sidebarPanel(
      
      #_________
      # Widget 1: X axis values
      selectInput("xvar", label = h3("Choose a quality for the X axis"),
                  choices = list(
                    "Sepal Length" = "Sepal.Length",
                    "Sepal Width" = "Sepal.Width",
                    "Petal Length" = "Petal.Length",
                    "Petal Width" = "Petal.Width"),
                  selected = "Sepal.Length"),
      
      #_________
      # Widget 2: Y axis values
      selectInput("yvar", label = h3("Choose a quality for the Y axis"),
                  choices = list(
                    "Sepal Length" = "Sepal.Length",
                    "Sepal Width" = "Sepal.Width",
                    "Petal Length" = "Petal.Length",
                    "Petal Width" = "Petal.Width"),
                  selected = "Sepal.Width"),
      
      #_________
      # Widget 3: Color set for each individual flower species
      selectInput('colorsvar', label = h3("Specify a color set"),
                  choices = list(
                    "Red/Orange/Grey" = "Set1",
                    "Green/Brown/Grey" = "Set2"),
                  selected = "Set1"
                  )
    ),
    
    # Main panel: Show the scatter plot
    mainPanel(
      plotlyOutput('scatter')
    )
  )
)  
)
# You must push your application up to the shinyapps.io server,
# making it publically usable
  
  
