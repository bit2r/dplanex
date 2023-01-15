

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {

  observeEvent(input$generate, {
    
    pdf_file <- switch(input$journal,
                       "IEEE" = "IEEE.pdf",
                       "Springer" = "springer.pdf",
                       "R Journal" = "RJwrapper.pdf"
    )
    
    output$pdfview <- renderUI({
      tags$iframe(style="height:600px; width:100%", src = pdf_file)
    })
    
  })

}
