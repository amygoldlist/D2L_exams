#################################################################
##
## Create a zipped xml file to upload to D2L
## Input = XLSX (or should it be CSV?)
## Amy_note = could we put the title somewhere?  does it matter?
##
#################################################################

## libraries
library(tidyverse)
library(openxlsx)
library(xml2)

## Read in data
df <- read.xlsx("data/Base_file.xlsx")
xml_qq <- read_xml("data/questiondb_base.xml")

############################
## add the date to the filename,  could expand!
############################


## 1. find the correct node:
title_node <- xml_find_all(xml_qq, xpath = ".//section")

## 2. Write it to the correct attribute.  Attributes!!
xml_attr(title_node,attr = "title") <- paste0("arithmetic_section_", Sys.Date())

print("Wrote the title.  Starting the next phase....")


## Loop over the dataframe:
for (i in (1:nrow(df) )){
  print(paste("Number of questions to get to: ", nrow(df)))
  print(paste("Adding question ", i))
  #### create a new question?
  
  ## identify the item
  qq_set <- xml_find_all(xml_qq, xpath = ".//item")
  qq_node <- qq_set[i]
  
  ## this step is unneccessary
  #new_q <- qq_node
  
  xml_attr(qq_node,attr = "title")  <- df$Title[i]
  xml_attr(qq_node,attr = "id") <- df$N[i]
  xml_attr(qq_node,attr = "ident") <- paste0("OBJ_",df$N[i])
  xml_attr(qq_node,attr = "label") <- paste0("QUES_",df$N[i])
  
  
  question_node <- xml_find_first(qq_node, xpath = ".// mattext")
  xml_text(question_node) <- df$Question[i]
  
  
  ans_set <- xml_find_all(qq_node,xpath = ".// formula")
  for (j in (1:length(ans_set))){
    ans_node <- ans_set[j]
    xml_text(ans_node)<- as.character(df$Answer[i])
  }
  

  
  qnode2 <- xml_find_first(qq_node, xpath = ".//response_num")
  xml_attr(qnode2, attr = "ident") <- paste0("QUES_",df$N[i],"_NUM")
  
  qnode2 <- xml_find_first(qq_node, xpath = ".//response_label")
  ##inspect
  #xml_attrs(qnode2)
  xml_attr(qnode2, attr = "ident") <- paste0("QUES_",df$N[i],"_A1")
  
  
  ### This is worthy of a function!!
  qnode2 <- xml_find_first(qq_node, xpath = ".//response_str")
  ##inspect
  #xml_attrs(qnode2)
  xml_attr(qnode2, attr = "ident") <- paste0("QUES_",df$N[i],"_STR")
  
  
  ## precision!
  qnode2 <- xml_find_all(qq_node, xpath = ".//precision")
  #xml_attrs(qnode2)
  
  xml_text(qnode2) <- as.character(df$Precision[i])
  #xml_attr(qnode2, attr = "precision_enforced") <- "no"
  
  qnode2 <- xml_find_all(qq_node, xpath = ".//tolerance")
  xml_attrs(qnode2)
  
  xml_text(qnode2) <- as.character(df$Tolerance[i])
  

  
  ## feedback?
  qnode2 <- xml_find_all(qq_node, xpath = ".//itemfeedback")
  qnode3 <- xml_find_all(qnode2, xpath = ".//mattext")
  xml_text(qnode3) <-  df$feedback[i]
  xml_attr(qnode2, attr = "ident") <- paste0("QUES_", df$N[i])
 
  ## hint?
  qnode2 <- xml_find_all(qq_node, xpath = ".//hintmaterial") 
  qnode3 <- xml_find_all(qnode2, xpath = ".//mattext")
  xml_text(qnode3) <- df$Hint[i]
  
  ## maybe create a new node?
  if (i< nrow(df)){
    print("creating a new question")
    xml_add_sibling(qq_node, .value =qq_node, where = "after", .copy = TRUE)
  }
}


### Print to file
  

##write_xml(xml_qq, "hi.xml")  #Test!


## The whole kit and caboodle
## create a new folder:
folder_name <- paste0("output\arithmetic_section_", Sys.Date())
dir.create(folder_name)
write_xml(xml_qq, paste0(folder_name,"\\questiondb.xml"))
## move the other file?

manifest <- read_xml("data\imsmanifest.xml")
write_xml(manifest, paste0(folder_name,"\\imsmanifest.xml"))



