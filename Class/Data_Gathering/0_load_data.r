library(jsonlite)

setwd("C:/Users/Open User/Desktop/Nurudeen-DS/Class")


if(!file.exists("Data_Gathering")){
  dir.create("Data_Gathering")
}


fileUrl <- "https://www.ekoanalytics.net/data/covid19_nigeria_states.csv"
download.file(fileUrl, destfile = "./Data_Gathering/covid_19.csv", method = "curl")
list.files("./Data_Gathering")



ajJsonData <- fromJSON("https://api.github.com/users/bunmiaj/repos")
ndJsonData <- fromJSON("https://api.github.com/users/ndabdulsalaam/repos")

names(ajJsonData )
names(ajJsonData )

ajJsonData$name
ndJsonData$name

#source("connecting_to_database.R")


# Load necessary libraries
install.packagesR)
library(DBI)
library(RPostgres)

# Establish the connection
sail_con <- dbConnect(RPostgres::Postgres(),
                      dbname = dsn_database,
                      host = dsn_host,
                      port = 5432,
                      user = "postgres",
                      password = dsn_password)

# List the number of tables
tables <- dbListTables(sail_con)
print(tables)

# Read data
data <- dbReadTable(sail_con, 'cscc_african_tweets')
print(head(data))  # Display the first few rows of the data

# It's good practice to disconnect from the database when done
dbDisconnect(sail_con)
