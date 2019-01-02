library(shiny, warn.conflicts = FALSE)
library(shinythemes, warn.conflicts = FALSE) 
library(tm, warn.conflicts = FALSE)
library(stringr, warn.conflicts = FALSE)
library(markdown, warn.conflicts = FALSE)
library(stylo, warn.conflicts = FALSE)

source("./cleaning_script.R")
quad_data <- readRDS(file="./data/quad_dat.RData")
tri_data <- readRDS(file="./data/tri_dat.RData")
bi_data <- readRDS(file="./data/bi_dat.RData")


shinyServer(function(input, output) {
  
  wordPrediction <- reactive({
    text <- input$text
    textInput <- cleanInput(text)
    wordCount <- length(textInput)
    wordPrediction <- nextWordPrediction(wordCount,textInput)})
  
  output$predictedWord <- renderPrint(wordPrediction())
  output$enteredWords <- renderText({ input$text }, quoted = FALSE)
})