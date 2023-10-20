library(shiny)
library(tidyverse)

# Define UI for app that draws a histogram ----
ui <- fluidPage(
  h1("Histographs of Faithful Dataset"),
  
  # App title ----
  titlePanel("Hello World!"),
  
  p("Here are two histographs of the data."),
  
  br(),
  
  strong("Use the bar to select number of bins"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    # Sidebar panel for inputs ----
    sidebarPanel(
      img(src = "time.jpg", height = 300, width = 220),
      # Input: Slider for the number of bins ----
      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 60,
                  value = 20)
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Histogram ----
      plotOutput(outputId = "distPlot"),
        
      plotOutput(outputId = "plot2")
    )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  # Histogram of the Old Faithful Geyser Data ----
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$bins) change
  # 2. Its output type is a plot
  output$distPlot <- renderPlot({
    
    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#75AADB", border = "yellow",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")
    
  })
  
  output$plot2 <- renderPlot({
    y<- faithful$waiting
    
    ggplot(faithful) +
      aes(x=waiting) +
      geom_histogram(bins=input$bins)
    
  })
  
}

# Create Shiny app ----
shinyApp(ui = ui, server = server)

