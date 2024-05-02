
# Task 4: Shiny Dashboard

library(shiny)
library(tidyverse)
library(here)

# Sample data
data <- read.csv(here("04_shiny_dashboard/test_data_shiny.csv"))

# UI
ui <- fluidPage(
  titlePanel("Simple Shiny Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("category", "Choose Category:", choices = unique(data$CategoryColumn))
    ),
    mainPanel(
      plotOutput("plot"),
      tableOutput("table")
    )
  )
)

# Server
server <- function(input, output) {
  filtered_data <- reactive({
    data %>% filter(CategoryColumn == input$category)
  })

  output$plot <- renderPlot({
    ggplot(filtered_data(), aes(x = VariableX, y = VariableY)) +
      geom_point()
  })

  output$table <- renderTable({
    filtered_data()
  })
}

# Run the app
shinyApp(ui = ui, server = server)
