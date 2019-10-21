#MPG ui

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Measurements on Petroleum Rock Samples "),

  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      #sliderInput("slidershape","What is value of shape",0,3,value=0.09),
      h5("please provide values for input this is required"),
      sliderInput("slidershape","What is value of shape",value= c(.9), min= 0.0001, max= 1),
      checkboxInput("showModel1","Show/Hide Model 1",value=TRUE),
      
      submitButton("Submit")
      ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("How to Use his Application"),
      h4("This application is based on linear regression algorithm and it predicts the Permutation of a rock based on variable shape."),
      h4("1. Please use Slider to input the value for Shape and the application will display the value for Permutation."),
      h4("2. The Plot shows the linear relationship between the dependent and target variable"),
      h3("Predicted Permeability:"),
      h2(textOutput("pred1")),
       plotOutput("plot1"),
      h4("Dataset Details"),
      h5("Dataset used for this sample belongs to Petroleum rock samples and it includes 48 rock samples from a petroleum reservoir"),
      h5("A data frame with 48 rows and 4 numeric columns"),
      h5("[,1]	area	area of pores space, in pixels out of 256 by 256"),
      h5("[,2]	peri	perimeter in pixels"),
      h5("[,3]	shape	perimeter/sqrt(area)"),
      h5("[,4]	perm	permeability in milli-Darcies"),
      h4("Summary"),
      h5(" Twelve core samples from petroleum reservoirs were sampled by 4 cross-sections. Each core sample was measured for permeability, and each cross-section has total area of pores, total perimeter of pores, and shape")
     
      
    )
  )
))
