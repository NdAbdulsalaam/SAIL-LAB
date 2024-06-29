## Set working directory
#Ayodeji
setwd("C:/Users/Open user/Desktop/SAIL-DS")
#Nurudeen
#setwd("C:/Users/Open User/Desktop/Nurudeen-DS/SAIL-Project")


## Load Library
if(!require(pacman)) install.package('pacman')

pacman::p_load(
  tidyverse,
  esquisse,
  readxl,
  skimr,
  sf,
  rnaturalearth,
  janitor,
  tidygeocoder,
  rnaturalearth
)

#install.packages("rnaturalearthdata")
#library(rnaturalearth)

### Read Metadata
Metadata_Country <- read_excel("API_SM.POP.NETM_DS2_en_excel_v2_424013.xls", sheet = 2)
Metadata_Indicator <- read_excel("API_SM.POP.NETM_DS2_en_excel_v2_424013.xls", sheet = 3)


View(Metadata_Country)
View(Metadata_Indicator)

#Create wrangle function
wrangle_data <- function(my_data){
  
  #load data
  my_data <- read_excel(my_data, sheet = 1, skip = 3)
  
  # Select columns that are not "Indicator Name" and "Indicator Code"
  my_data <- my_data %>%
    select(-c(`Indicator Name`, `Indicator Code`, `Country Code`))
    
  
  # Create a vector with the names of African countries
  african_countries <- c(
    "Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", 
    "Cabo Verde", "Cameroon", "Central African Republic", "Chad", "Comoros", 
    "Congo, Dem. Rep.", "Congo, Rep.", "Djibouti", 
    "Egypt, Arab Rep.", "Equatorial Guinea", "Eritrea", "Eswatini", "Ethiopia", "Gabon", 
    "Gambia, The", "Ghana", "Guinea", "Guinea-Bissau", "Cote d'Ivoire", "Kenya", 
    "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", 
    "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda", 
    "Sao Tome and Principe", "Senegal", "Seychelles", "Sierra Leone", "Somalia", 
    "South Africa", "South Sudan", "Sudan", "Tanzania", "Togo", "Tunisia", 
    "Uganda", "Zambia", "Zimbabwe"
  )
  

  ### Filtered african countries
  filtered_data <- my_data %>% filter(`Country Name` %in% african_countries)
  filtered_data <- filtered_data %>% arrange(`Country Name`)

  
  # Standardized names used by ne_countries()
  standard_names <- c(
    "Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", 
    "Cabo Verde", "Cameroon", "Central African Republic", "Chad", "Comoros", 
    "Congo, Dem. Rep.", "Congo, Rep.", "Djibouti", "Egypt, Arab Rep.", 
    "Equatorial Guinea", "Eritrea", "Eswatini", "Ethiopia", "Gabon", 
    "Gambia, The", "Ghana", "Guinea", "Guinea-Bissau", "Côte d'Ivoire", 
    "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", 
    "Mali", "Mauritania", "Mauritius", "Morocco", "Mozambique", 
    "Namibia", "Niger", "Nigeria", "Rwanda", "São Tomé and Príncipe", 
    "Senegal", "Seychelles", "Sierra Leone", "Somalia", "South Africa", 
    "South Sudan", "Sudan", "Tanzania", "Togo", "Tunisia", "Uganda", 
    "Zambia", "Zimbabwe"
  )
  
  filtered_data$`Country Name` <- standard_names
  names(filtered_data)[names(filtered_data) == "Country Name"] <- "country_name"
  
  
  return(filtered_data)
}


transpose_data <- function(filtered_data){
  # Transpose the data frame
  tibbled_data <- tibble(filtered_data)
  transposed_data <- tibbled_data %>%
    pivot_longer(cols = -country_name, names_to = "year", values_to = "Value") %>%
    pivot_wider(names_from = country_name, values_from = Value)
  
  # Append "-12-31" to each year to represent December 31st of that year
  transposed_data$date <- as.Date(paste0(transposed_data$year, "-1-1"))
  
  #Put the date column at the beginning and drop the year column
  trans_data <- transposed_data %>% 
    select(-year) %>% 
    select(date, everything())
  
  return(trans_data)
}


filtered_data <- wrangle_data("API_SM.POP.NETM_DS2_en_excel_v2_424013.xls")
filtered_data$total <- filtered_data %>% 
  select(-c(country_name)) %>% 
  rowSums()
view(filtered_data)


trans_data <- transpose_data(filtered_data)
view(trans_data)

#EDA
#esquisse::esquisser(filtered_data)
#esquisse::esquisser(trans_data)


# Test net migration for all the countries
ggplot(filtered_data) +
  aes(x = country_name, y = `total`) +
  geom_col(fill = "#112446") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90L)) +
  labs(title = "Cummulative Net Migration for African Countries", y = "Net Migration in Millions")


# Making Nigeria (~800k net imnigration) as the focus, select countries with more 2M net immigration/Emigration
# Immgiration: Ethopia, South Africa
# Emmigration: Sudan, Zimbabwe


# Get the trend for the selected countries
make_trend <- function(data = trans_data, country) {
  country_sym <- sym(country)  # Convert the string to a symbol
  ggplot(data) +
    aes(x = date, y = !!country_sym) +  # Use `!!` to unquote the symbol
    geom_line(colour = "#112446") +
    theme_minimal() +
    labs(title = paste0(country, " Migration Trend from 1960 - 2023"), x = "Date", y = "Net Migration in Millions")
}


# Get the trend for the selected countries
make_trends <- function(data = trans_data, countries) {
  data_long <- data %>%
    select(date, all_of(countries)) %>%
    pivot_longer(cols = -date, names_to = "country", values_to = "value")
  
  ggplot(data_long, aes(x = date, y = value, colour = country)) +
    geom_line() +
    theme_minimal() +
    labs(title = "Trends for the Selected Countries", x = "Date", y = "Net Migration in Millions", colour = "Country") +
    scale_y_continuous(limits = c(-1000000, 1000000))  # Set y-axis limits
}

countries <- c("Nigeria", "Ethiopia", "South Africa", "Sudan", "Zimbabwe")

# Plot Trends on a single chat
make_trends(data = trans_data, countries)

# Plot trend for each country
for (country in countries) {
  print(make_trend(trans_data, country))
}


ggplot(filtered_data) +
  aes(x = country_name, y = `1983`) +
  geom_col(fill = "#112446") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90L)) +
  labs(title = "Nigeria 1983 Net Migration in Comparison to Other African Countries", y = "Net Migration in Millions")


# Load world map data for Africa
world <- ne_countries(scale = "medium", continent = "Africa", returnclass = "sf")

#Geocode filtered data to get long and lat of the countries
geocoded_filtered_data <- filtered_data %>% 
  
  # geocode Address to lat/long
  tidygeocoder::geocode(
    address = country_name,
    method = "osm"
  )

view(geocoded_filtered_data)

# Merge with world map data
merged_data <- left_join(world, geocoded_filtered_data, by = c("name" = "country_name"))

# Plot the map
ggplot() +
  geom_sf(data = merged_data, aes(fill = total)) +
  scale_fill_viridis_c(name = "Net Migration", option = "plasma") +
  theme_minimal() +
  labs(title = "Net Migration in African Countries") +
  # Adding country labels
  geom_text(data = merged_data, aes(label = name, x = long, y = lat), size = 3.5, color = "black", check_overlap = TRUE, nudge_y = 0.5)


