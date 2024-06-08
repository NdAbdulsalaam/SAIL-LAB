# Loading a dataset directle from a googlesheets api

# install.packages("googlesheets4")
library("googlesheets4")

# Load necessary package for data manipulation
library("dplyr") 

# Authenticate with Google Sheets
gs4_auth()

sheet_url <- "https://docs.google.com/spreadsheets/d/1GchBnFrEH8cnO-opGXid24iItsh5ccmOX_AoWMjTYCc/edit#gid=773627286"

# Read the data into a data frame
data <- read_sheet(sheet_url)

# View the head few rows of the dataset
head(data)
view(data)
skim(data)
