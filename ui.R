library(shiny, warn.conflicts = FALSE)
library(shinythemes, warn.conflicts = FALSE) 
library(tm, warn.conflicts = FALSE)
library(stringr, warn.conflicts = FALSE)
library(markdown, warn.conflicts = FALSE)
library(stylo, warn.conflicts = FALSE)

shinyUI(navbarPage("Coursera Data Science Capstone", 
                   
                   theme = shinytheme("cerulean"),
                   
                   
                   # Prediction tab
                   
                   tabPanel("Word Prediction App",
                            
                            fluidRow(
                              
                              column(3),
                              column(6,
                                     tags$div(textInput("text", 
                                                        label = h3("Enter phrase here:"),
                                                        value = ),
                                              tags$span(style = "color:lightgrey",("English words only")),
                                              br(),
                                              tags$hr(),
                                              h4("Predicted next word:"),
                                              tags$span(style = "color:white",
                                                        tags$strong(tags$h3(textOutput("predictedWord")))),
                                              br(),
                                              tags$hr(),
                                              h4("Entered text:"),
                                              tags$em(tags$h4(textOutput("enteredWords"))),
                                              align = "center")
                              ),
                              column(3)
                            )
                   )
                   
                   
                   
                   
)
)