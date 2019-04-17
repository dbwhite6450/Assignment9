library(shiny)

probtable <- fluidPage(
  
  
  sidebarPanel(
    
    sliderInput("Sepal.Length","Length of Sepal:",
                min = 0,max = 100,value = 10,step = 10),
    sliderInput("Sepal.Width","Width of Sepal:",
                min = 1,max = 100,value = 10),step = 10,
    sliderInput("Petal.Length","Length of Petal:",
                min = 0,max = 100,value = 10,step = 10),
    sliderInput("Petal.Width","Width of Petal:",
                min = 0,max = 10,value = 10,step = 10)
  ),
  
  
  fluidRow(
    column(12,
           dataTableOutput("table"))
  ),
  
  mainPanel(
    plotOutput("histogram")
  )
)
