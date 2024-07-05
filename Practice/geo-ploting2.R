setwd("C:/Users/Open User/Desktop/Nurudeen-DS/Practice")

pacman::p_load(
  usethis,
  tidyverse,
  tidygeocoder,
  janitor
)


usethis::edit_r_environ()


# Read CSV data (assuming file path is correct)
uba_df <- read_csv("../data/uba_branches.csv")

uba_df2 <- uba_df %>% 
  clean_names()

head(uba_df2)

geo_tbl_osm <- uba_df2[159:177, ] %>% 
  tidygeocoder::geocode(
    address = address,
    method = "osm",
  )

view(geo_tbl_osm)

geo_tbl_google <- uba_df2[159:177, ] %>% 
  tidygeocoder::geocode(
    address = address,
    method = "google"
  )

view(geo_tbl_google)
