library(stringr)
library(shiny)

ui <- fluidPage(
    textAreaInput("input", "Input", "", height = "300px", width = "1000px"),
    verbatimTextOutput("value")
)
server <- function(input, output) {
    output$value <- renderText({ 
        x <- input$input
        separator <- "\\."
        prefix <- "%"
        xs <- str_trim(str_split(x, "\\.")[[1]])
        paste0("%", xs, "\n")
    })
}

shinyApp(ui = ui, server = server)
