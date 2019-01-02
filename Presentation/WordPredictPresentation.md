<style>

/* slide titles */
.section .reveal .state-background {
background: #ffffff;
}
.section .reveal p {
font-family: Verdana, Arial, Helvetica, sans-serif;
color: rgb(0, 53, 95);
text-align:center; width:100%;
line-height: 0.1em;
#margin-top: 65px;
}
.section .reveal h1, .section .reveal h2, .section {
font-family: Verdana, Arial, Helvetica, sans-serif;
color: #000000;
margin-top: 20px;
}
.reveal pre code {
	font-family: Verdana, Arial, Helvetica, sans-serif;
  background-color: #000000;
  color: white;
  font-size: 40px;
  #position: fixed; top: 90%;
  #text-align:center; width:100%;
  }
.reveal h3 { 
  font-size: 50px;
  color: #000000  ;
}

/* heading for slides with two hashes ## */
.reveal .slides section .slideContent h2 {
   font-size: 37px;
   font-weight: bold;
   color: black;
}

/* ordered and unordered list styles */
.reveal ul, 
.reveal ol {
    font-size: 37px;
    color: #000000;
    list-style-type: none;
  
  .reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
  }

</style>
                                Capstone Project 
===================================================================================== 
font-family: 'Arial'
transition: fade
Coursera/Johns Hopkins University 

Data Science Specialization
Switftkey Capstone Project 

Sandip Khanvilkar
skhanvilkar@outlook.com Jan 1, 2019

  Objective
=====================================================================================

- The main goal of this capstone project is to build a shiny application that is able to predict the next word. This    exercise was divided into seven sub tasks like data cleansing, exploratory analysis, the creation of a predictive     model and more.

- All text data that is used to create a frequency dictionary and thus to predict the next words comes from a corpus    called HC Corpora.

- All text mining and natural language processing was done with the usage of a variety of well-known R packages.

Algorithm 
========================================================

- N-gram model with stupid back-off strategy was used

- Dataset was cleaned, lower-cased, removing links, twitter handles, punctuations, numbers and extra whitespaces, etc

- Matrices from 6-gram to uni-gram were extracted using RWeka 

- Reduced size of model by dropping least frequent N-grams

Shiny App interface
========================================================

- Provides a text input box for user to type a word/phrase

- Detects words typed and predicts the next word reactively

- Iterates from longest N-gram (6-gram) to shortest (2-gram)

- Predicts using the longest, most frequent, matching N-gram

- Option to select no, of prediction displayed

App and resources
========================================================

- Average response time under 2-3 seconds

- Application memory usage well under 150 MB

- Application is running at: https://skhanvilkar.shinyapps.io/Coursera-Data-Science-Capstone-master/

- Github link for various code files is here: https://github.com/ppant/Coursera-Data-Science-Capstone-Project 

Code and app will be updated with any new features/improvements.
