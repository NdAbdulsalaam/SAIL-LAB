pacman::p_load(
  UsingR,
  broom,
  BSDA,
  manipulate,
  ggfortify,
  tidyverse
)

?glm

data(mtcars)

view(mtcars)
glimpse(mtcars)

model <-  lm(mpg ~ wt +cyl, data =mtcars)