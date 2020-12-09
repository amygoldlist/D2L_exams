########################################
####
#### A Demo exam created for D2L Brightspace
#### Amy Goldlist, 2020-11-12
####
########################


## How does this work?  I started with an R-project.  
## Each individual excercise gets its own Rmd file (though Rnw also works, and would  allow me to use LaTeX.)
## They are all knit together in this master script




### Load up our important packages

library("exams") 
library("tth")
library("base64enc")
library("dplyr")
library("scales") ### this does $$ properly, which is important for financial problems


### check the questions individually.
### This is usueful for trouble shooting, but we are only viewing in html, not on D2L, so it's not perfect.

exams2html("exercises/counting_numeric.Rmd")
#exams2html("exercises/conf_dentist_short_answer.Rmd")
# exams2html("exercises/MC_car_FV.Rmd")


### Things i learned:  sometimes numbers display odd.  solution:
### We can use LaTeX number formatting by calling a vaiable in $$: $`r myvar`$, but if you instead do `r myvar` the font is better.
### It's best to display using a display foprmat (like dollar() from scales)

### list all of the questions in the correct order.  I have three in this demo
myexam <- paste0("exercises/",list("counting_numeric.Rmd", "conf_dentist_short_answer.Rmd", "FV_car_MC.Rmd"))


## make an html, ie, as a check on the whole thing:
exams2html(myexam)

### Now make a D2L package.  
## I can't make the Zip work, so I'm goign to figure that out.... later.

## Also to do:  putting this in a proper directory.



set.seed(1234)
exams2blackboard(myexam, 
                 name = paste0("r_exams_", Sys.Date()),
                 n = 100,  ### how many copies of each?
                 zip = FALSE)
