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
        xs <- str_trim(str_split(x, separator)[[1]])
        paste(paste0(prefix, " ", xs, "\n"), collapse = "")
    })
}

shinyApp(ui = ui, server = server)
