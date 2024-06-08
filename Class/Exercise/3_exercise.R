# Loading a dataset as a csv file


# Load the library readr for reading rectangular data like csv file,

library(readr)
install.packages("prettyunits")
library(inspectdf)
install.packages("fastmap")
install.packages("bslib")
library(esquisse)

if(!require(pacman)) install.packages("pacman")
  pacman::p_load(
    tidyverse,
    inspectdf,
    plotly,
    janitor,
    visdat,
    esquisse
  )
  
  ebola_sierra_lone <- read.csv("C:/Users/Open User/Downloads/ebola_sierra_leone - ebola_sierra_leone.csv.csv")
  
  # To view the entire dataset
  view(ebola_sierra_lone)
  # install.packages("esquisse")
  library(esquisse)
  esquisse::esquisser(ebola_sierra_lone)
  
  install.packages("skimr")
  library(skimr)
  
  # To see a comprehension summary of the dataset's statistics
  skim(ebola_sierra_lone)
  
  # To see a quick, transposed oversiew of the dataset's structure and contents.
  glimpse(ebola_sierra_lone)  