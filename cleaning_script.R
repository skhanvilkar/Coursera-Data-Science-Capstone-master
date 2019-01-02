library(shiny, warn.conflicts = FALSE)
library(shinythemes, warn.conflicts = FALSE) 
library(tm, warn.conflicts = FALSE)
library(stringr, warn.conflicts = FALSE)
library(markdown, warn.conflicts = FALSE)
library(stylo, warn.conflicts = FALSE)

# read n-grams datasets
quad_data <- readRDS(file="./data/quad_dat.RData")
tri_data <- readRDS(file="./data/tri_dat.RData")
bi_data <- readRDS(file="./data/bi_dat.RData")


# define function to clean dataset
dataCleaner <- function(text){
  
  clean_text <- tolower(text)
  clean_text <- removePunctuation(clean_text)
  clean_text <- removeNumbers(clean_text)
  clean_text <- str_replace_all(clean_text, "[^[:alnum:]]", " ")
  clean_text <- stripWhitespace(clean_text)
  
  return(clean_text)

}



# define function to clean input
cleanInput <- function(text){
  
  textInput <- dataCleaner(text)
  textInput <- txt.to.words.ext(textInput, 
                                language="English.all", 
                                preserve.case = TRUE)
  
  return(textInput)

}



# define prediction function
nextWordPrediction <- function(wordCount,textInput){
  
  if (wordCount >= 3) {
    textInput <- textInput[(wordCount-2):wordCount] 
    
  }
  
  else if(wordCount == 2) {
    textInput <- c(NA,textInput)   
  }
  
  else {
    textInput <- c(NA,NA,textInput)
  }
  
  

wordPrediction <- as.character(quad_data[quad_data$unigram == textInput[1] & 
                                             quad_data$bigram == textInput[2] & 
                                             quad_data$trigram == textInput[3],][1,]$quadgram)
  
  if(is.na(wordPrediction)) {
    wordPrediction1 <- as.character(tri_data[tri_data$unigram == textInput[2] & 
                                               tri_data$bigram == textInput[3],][1,]$trigram)
    
    if(is.na(wordPrediction)) {
      wordPrediction <- as.character(bi_data[bi_data$unigram == textInput[3],][1,]$bigram)
    }
  }
  
  
  print(wordPrediction)
  
}