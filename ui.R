
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("title"),
  
  sidebarLayout(
    sidebarPanel("sidebar panel",
                 sliderInput("x",
                             "x",
                             min = 1,
                             max = 50,
                             value = 2),
                 sliderInput("y",
                             "y",
                             min = 1,
                             max = 50,
                             value = 2),
                 sliderInput("clr",
                             "rainbow number",
                             min=2,
                             max=64,
                             value=16)
                 
    ),
    mainPanel(
      plotOutput("plot1")
    )
  )
  
))