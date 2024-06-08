# Mapply

# The mapply() function is similar to lapply(), but it allows us to pass 
# multiple arguments to our function(s)

x <- list(c(1:10))

y <- lapply(x, function(n) n^2)

y

z <- mapply(function(a, b) a * b, x, y)

z

########
# Example 2:

# Define the lengths and widths of the rectangles
lengths <- c(5, 10, 15)
widths <- c(2, 4, 6)

# Define a function to compute the area of a rectangle
calculate_area <- function(length, width) {
  return(length * width)
}

# Use mapply to apply the function to each pair of length and width
areas <- mapply(calculate_area, lengths, widths)

# Print the result
print(areas)


###########
#Example 2
# Define the heights (in cm) and weights (in kg)
# Required libraries
library(dplyr)
library(ggplot2)

# Data
heights <- c(170, 165, 180, 155, 190)
weights <- c(70, 55, 90, 45, 100)
ages <- c(25, 34, 45, 29, 52)
genders <- c("Male", "Female", "Male", "Female", "Male")
waist_circumferences <- c(80, 70, 100, 60, 110)

# Functions
calculate_bmi <- function(height, weight) {
  height_in_meters <- height / 100
  bmi <- weight / (height_in_meters ^ 2)
  return(bmi)
}

classify_bmi <- function(bmi) {
  if (bmi < 18.5) {
    return("Underweight")
  } else if (bmi < 24.9) {
    return("Normal weight")
  } else if (bmi < 29.9) {
    return("Overweight")
  } else {
    return("Obese")
  }
}

calculate_whtr <- function(waist, height) {
  return(waist / height)
}

# Compute BMI and classifications
bmi_values <- mapply(calculate_bmi, heights, weights)
bmi_classes <- mapply(classify_bmi, bmi_values)
whtr_values <- mapply(calculate_whtr, waist_circumferences, heights)
whtr_values

# Combine into a data frame
results <- data.frame(
  Height = heights,
  Weight = weights,
  Age = ages,
  Gender = genders,
  BMI = round(bmi_values, 2),
  Classification = bmi_classes,
  Waist_to_Height_Ratio = round(whtr_values, 2)
)

# Print results
print(results)

`# Summarize by BMI classification
summary_by_classification <- results %>%
  group_by(Classification) %>%
  summarise(
    Average_Height = mean(Height),
    Average_Weight = mean(Weight),
    Average_Age = mean(Age),
    Count = n()
  )

print(summary_by_classification)

# Visualize BMI distribution
ggplot(results, aes(x = BMI, fill = Classification)) +
  geom_histogram(binwidth = 1, position = "dodge", color = "black") +
  labs(title = "BMI Distribution",
       x = "BMI",
       y = "Frequency") +
  scale_fill_manual(values = c("Underweight" = "blue", 
                               "Normal weight" = "green", 
                               "Overweight" = "orange", 
                               "Obese" = "red"))

# Scatter plot for BMI vs Age
ggplot(results, aes(x = Age, y = BMI, color = Classification, shape = Gender)) +
  geom_point(size = 3) +
  labs(title = "BMI vs Age",
       x = "Age",
       y = "BMI") +
  scale_color_manual(values = c("Underweight" = "blue", 
                                "Normal weight" = "green", 
                                "Overweight" = "orange", 
                                "Obese" = "red")) +
  theme_minimal()

# Health risk groups
results <- results %>%
  mutate(Health_Risk = case_when(
    BMI >= 30 ~ "High Risk",
    BMI >= 25 & BMI < 30 ~ "Moderate Risk",
    TRUE ~ "Low Risk"
  ))

# Visualize health risks
ggplot(results, aes(x = Age, y = BMI, color = Health_Risk, shape = Gender)) +
  geom_point(size = 3) +
  labs(title = "Health Risk Groups by Age and BMI",
       x
       
       