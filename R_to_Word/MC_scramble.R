
################################
##
## This script reads in some MC questions as a folder of text files.
## For each file, it reads in the question, and picks one out of the pool
## (option:  get more, it's coded in)
## It glues them all together, than scrambles the Q and answers.
## Amy Goldlist, 2025-10-20, with Copilot as a helper
##
###################################################################

library(stringr)
library(dplyr)



read_mc_questions <- function(file_name, n = "auto", chatty = FALSE) {
  ## reads in some questions, and spits out n of them
  lines <- readLines(file_name)
  if (chatty){
    
    print(paste("REading in the file: ", file_name))
  }
  
  questions_dict <- list()
  question_id <- 1
  question_text <- ""
  options <- list()
  answer <- ""
  
  for (line in lines) {
    line <- trimws(line)
    # Detect question line
    if (grepl("^\\d+\\.", line)) {
      if (question_text != "") {
        # Save previous question
        questions_dict[[paste0("Q", question_id)]] <- list(
          question = question_text,
          options = options,
          answer = answer
        )
        question_id <- question_id + 1
        options <- list()
        answer <- ""
      }
      question_text <- sub("^\\d+\\.\\s*", "", line)
    } else if (grepl("^[a-d]\\)", line)) {
      opt_text <- sub("^[a-d]\\)\\s*", "", line)
      # Detect correct answer
      if (grepl("^\\*", opt_text)) {
        opt_text <- sub("^\\*", "", opt_text)
        answer <- opt_text
      }
      options <- c(options, opt_text)
    }
  }
  # Save last question
  if (question_text != "") {
    questions_dict[[paste0("Q", question_id)]] <- list(
      question = question_text,
      options = options,
      answer = answer
    )
  }
  
  if (n=="auto"){
    n <- length(questions_dict)
  }
  
  if (chatty){
    print("READ and processed!  Number of questions:")
    print(length(questions_dict))
    print(paste0("Sampling ", n))
  }
  
  qq <- sample(questions_dict, n)
  
  return(qq)
}


### Shuffle

shuffle_answers <- function(questions_list) {
  for (i in seq_along(questions_list)) {
    questions_list[[i]]$options <- sample(questions_list[[i]]$options, replace = FALSE)
  }
  return(questions_list)
}

#all_questions <- shuffle_answers(all_questions)



## Read in each section


# List all .txt files in the folder
files <- list.files(path = "MC", pattern = "\\.txt$", full.names = TRUE)

# Initialize a list to store all questions from all files
all_questions <- list()
# Loop through each file and read questions
for (file in files) {
  #print(file)
  qq <- read_mc_questions(file, n=1)  # Use your previously defined function
  
  ##print("Whew!")
  
  all_questions <- append(all_questions, qq)
}



##shuffle questions
all_questions <- all_questions %>% sample(replace = FALSE)

MC_new <- shuffle_answers(all_questions)



## currency <- read_mc_questions("Currency_MC.txt")
#find_P <- read_mc_question("")

## make a big list!!

## shuffle:


# Print all questions from all files
#print(all_questions)

# for (i in (1:length(MC_new))){
#   cat(paste0(i,":  ",MC_new[[i]]$answer))
# }


