#   Argument Matching 

set.seed(234)

sample_data <- rnorm(100)

print(sample_data)

sd(sample_data)

sd(x = sample_data, na.rm = FALSE)

sd(na.rm = FALSE, x = sample_data)

sd(na.rm = FALSE, sample_data)


# We should be careful with messing around with the order of 
# arguments in functions (as it may lead to some confusions).

