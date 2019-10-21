#This is for Miles Per Gallon
library(shiny) 
shinyServer(function(input, output) {

   model1 <- lm(perm ~ shape, data = rock)

  model1pred <- reactive({
    permInput <- input$slidershape
    predict(model1, newdata = data.frame(shape = permInput))
  })
  
  
  output$plot1 <- renderPlot({
    permInput <- input$slidershape
    
    plot(rock$shape, rock$perm, xlab = "Shape",ylab = "Permeability")
    abline(model1, col = "orange", lwd = 12)
    points(permInput, model1pred(), col = "red", pch = 16, cex = 2)
  })

  output$pred1 <- renderText({
    model1pred()
  })

  
})