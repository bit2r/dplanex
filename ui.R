
library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Science and Engineering Journal Publishing"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("journal",
                        "Sci/Eng Journals",
                        c("IEEE", "Springer", "R Journal")),
            actionButton("generate", "Generate PDF")
        ),

        # Show a plot of the generated distribution
        mainPanel(
          uiOutput("pdfview")
        )
    )
)
