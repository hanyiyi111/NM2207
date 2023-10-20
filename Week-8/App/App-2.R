library(shiny)

# Define UI for displaying current time ----
ui <- fluidPage(
  
  h2(textOutput("currentTime")),

sidebarLayout(
  # Sidebar panel for inputs ----
  sidebarPanel(
    p("This is Singapore local time.")),
  
  # Main panel for displaying outputs ----
  mainPanel(
    img(src = "time.jpg", height = 300, width = 220),
    )
  )
)

# Define server logic to show current time, update every second ----
server <- function(input, output, session) {
  
  output$currentTime <- renderText({
    invalidateLater(1000, session)
    paste("The current time is", Sys.time())
  })
}

# Create Shiny app ----
shinyApp(ui, server)

