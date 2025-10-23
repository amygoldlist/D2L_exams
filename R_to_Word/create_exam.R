##########################
##
## This Script wraps the others, and makes the test
## A.G.
##
############################



# Load required package
library(rmarkdown)

# Set default letter value
letter <- "CC"  # You can change this to any letter you want

# Generate today's date
today <- Sys.Date()


# Create the filename
output_file <- paste0("doc/MT_", today, "_", letter, ".docx")

### Teh solutions file has a similar name.
solutions_file <- paste0("doc/MT_", today, "_", letter, "-SLNS.txt")

##Warning!  This will overwrite any old file with this name, I did that on purpose.
writeLines("Solutions:", solutions_file)

## I put this in to remind you to use cat() if you want to append instead of overwrite.
cat("\n", file =solutions_file, append = TRUE)


# Render the R Markdown file to Word format.
## Your text solutions should come up too
render("Exam_Formatting.Rmd",
       output_format = "word_document",
       output_file = output_file,
       ## The params passes things from this script.  Fancy!!
       params = list(letter = letter, solutions_file = solutions_file))
