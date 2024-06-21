# Set working directory (replace with your actual path)
setwd("C:/Users/Open User/Desktop/Nurudeen-DS/Practice")

# Load libraries
pacman::p_load(
  tidyverse,
  leaflet,
  tidygeocoder,
  plotly,
  sf,
  mapview
)

# Read CSV data (assuming file path is correct)
ng_market <- read_csv("../data/nigeria_markets.csv")

# Check the first few rows (add semicolon)
view(ng_market)
str(ng_market)

# Convert to sf object (assuming valid longitude/latitude columns)
ng_market_sf <- ng_market %>%
  st_as_sf(
    coords = c("longitude", "latitude"),
    crs = 4326
  )

mapview(ng_market_sf)

# Create Leaflet map
ng_market_sf %>%
  leaflet() %>%
  
  # Add base layers (choose one or both)
  # Option 1: MtbMap
  addProviderTiles(providers$MtbMap)
  

# Create Leaflet map
ng_market_sf %>%
  leaflet() %>%
  # Option 2: World Imagery
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") %>%
  addProviderTiles(providers$Stadia.StamenTonerLite, group = "Toner Lite") %>%  # Optional: Toner Lite
  
  # Add layers control (if using multiple base layers)
  addLayersControl(baseGroups = c("Toner Lite", "World Imagery")) %>%
  
  # Add markers with labels and popups
  addMarkers(
    label = ng_market_sf$market_settlement_name,
    clusterOptions = markerClusterOptions(),  # Enable marker clustering
    popup = ifelse(!is.na(ng_market_sf$OBJECTID),
                   ng_market_sf$OBJECTID,
                   "Not Sure of the market's location"
    )
  )

# Create Leaflet map
ng_market_sf %>%
  leaflet() %>%
  # Option 2: World Imagery
  addProviderTiles(providers$Esri.WorldImagery, group = "World Imagery") %>%
  addProviderTiles(providers$Stadia.StamenTonerLines, group = "Toner Lite") %>%  # Optional: Toner Lite
  
  # Add layers control (if using multiple base layers)
  addLayersControl(baseGroups = c("Toner Lite", "World Imagery")) %>%
  
  # Add markers with labels and popups
  addMarkers(
    label = ng_market_sf$market_settlement_name,
    clusterOptions = markerClusterOptions(),  # Enable marker clustering
    popup = ifelse(!is.na(ng_market_sf$OBJECTID),
                   ng_market_sf$OBJECTID,
                   "Not Sure of the market's location"
    )
  )
