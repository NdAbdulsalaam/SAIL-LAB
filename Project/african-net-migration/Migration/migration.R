if(!require(pacman)) install.packages("pacman")
pacman::p_load(
  tidyverse,
  inspectdf,
  plotly,
  janitor,
  visdat,
  esquisse,
  readr,
  skimr
)

# Load dataset

migration <- read_csv("Trans_migration.csv")
view(migration)
migration

dim(migration)

