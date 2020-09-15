#Demonstrates retrieval of part information from the iGEM Registry of Standard Biological Parts
#Single Part or Multiple Parts (using map_df, for example)
#Author: Adam Santone

#load libraries
#purrr has map_df; useful for multiple parts
library(rsbp)
library(purrr)

#== SINGLE PART ==#

#save the name of a part
part<-"BBa_K1033929"

#retrieve and store part information
result<-getPart(part)

#display info for a part
result


#== MULTIPLE PARTS ==#

#store part names
parts<-c("BBa_K1033930",
         "BBa_K1033931",
         "BBa_K1033932",
         "BBa_K1033933"
)

#retrieve and store part information (multiple)
#map_df is from the purrr library
results<-map_df(parts,getPart)

#display info for multiple parts
results
