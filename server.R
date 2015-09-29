
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyServer(function(input, output) {
  output$plot1<-renderPlot({image(c(seq(1,input$x,1)),c(seq(1,input$y,1)),(matrix(rnorm((input$x)*(input$y),mean=50,sd=10),input$x,input$y)),col=rainbow(input$clr))
  })
})
