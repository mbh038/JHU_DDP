
Question 1

Consider the following code for the cars data set 
library(manipulate)
myPlot <- function(s) {
    plot(cars$dist - mean(cars$dist), cars$speed - mean(cars$speed))
    abline(0, s)
}

#This function plots distance versus speed, each de-meaned and an associated line of slope s.
#Which of the following code will make a manipulate plot that creates a slider for the slope?


Your Answer


Score

Explanation

manipulate(myPlot(s), s = slider(0, 2, step = 0.1))  #Correct 1.00  THIS ONE
manipulate(myPlot(s), slider = x(0, 2, step = 0.1))     
manipulate(myPlot(s), x.s = slider(0, 2, step = 0.1))     
manipulate(myPlot, s = slider(0, 2, step = 0.1))     
Total  1.00 / 1.00  


#Question 2

#Which of the following code uses the rCharts package to create a sortable
#and searchable data table for the airquality data set? 
#Assume the rCharts package and the airquality data set have already been
#loaded into R.

library(rCharts)


Your Answer


Score

Explanation

 dTable(airquality, sPaginationType = "full_numbers")#   Correct 1.00   THIS ONE
 d      
 airquality      
 head(airquality)      
Total  1.00 / 1.00  


Question 3

A basic shiny data product requires:



Your Answer


Score

Explanation

A ui.R and server.R file or a A server.R file and a directory called www containing the relevant html files. Correct 1.00  THIS ONE
A server.R file only.     
A shiny.R file.    
A ui.R file only.    
Total  1.00 / 1.00  


Question 4

What is incorrect about the followig syntax in ui.R? 
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Data science FTW!"),
  sidebarPanel(
    h2('Big text')
    h3('Sidebar')
  ),
  mainPanel(
      h3('Main Panel text')
  )
))





Your Answer


Score

Explanation

The h2 command has the wrong arguments.    
The h3 command should be an h2 command.    
Missing a comma in the sidebar panel Correct 1.00  THIS ONE
The "Sidebar" should say "Sidebar text".    
Total  1.00 / 1.00  


Question 5

Consider the following code in ui.R shinyUI(pageWithSidebar(
  headerPanel("Example plot"),
  sidebarPanel(
    sliderInput('mu', 'Guess at the mu',value = 70, min = 60, max = 80, step = 0.05,)
  ),
  mainPanel(
    plotOutput('newHist')
  )
))



 And the following server.R code. 
library(UsingR)
data(galton)

shinyServer(
  function(input, output) {
    output$myHist <- renderPlot({
      hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
      mu <- input$mu
      lines(c(mu, mu), c(0, 200),col="red",lwd=5)
      mse <- mean((galton$child - mu)^2)
      text(63, 150, paste("mu = ", mu))
      text(63, 140, paste("MSE = ", round(mse, 2)))
      })
    
  }
)


 Why isn't it doing what we want?


Your Answer

Score

Explanation

The server.R output name isn't the same as the plotOutput command used in ui.R. Correct 1.00  THIS ONE
It should be mu in server.R     
The phrase "Guess at the mu value" should say "mean" instead of "mu"     
The limits of the slider are set incorrectly and giving an error.    
Total 
