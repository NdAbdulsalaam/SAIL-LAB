setwd("C:/Users/Open User/Desktop/Nurudeen-DS/Class/Practice")

downlaod_data = function(dataUrl, destination="data", fileName="covid_19.csv" ){
  if(!file.exists(destination)){
    dir.create(destination)
  }
  
  tryCatch({
    download.file(dataUrl, destfile=paste0(destination, '/', fileName))
  }, error = function(e) {
    message(paste("Error downloading data: ", e))
  })
}

downlaod_data("https://ekoanalytics.net/data/covid19_nigeria_states.csv")

list.files()
my_data <- read.csv("./data/covid_19.csv")
names(my_data) 
toupper(names(my_data))
strsplit(names(my_data), "_")
