# Making Predictions
# Make predictions, using linear regression 
#  Fit the Model 
my_data <- mtcars 
my_model <- lm(qsec ~ mpg, data = my_data)

# Make Predictions 
predictions <- predict(my_model, newdata = my_data)

# Step 3 : Visualize Prediction 

ggplot(data=my_data, aes(x = mpg , y = qsec)) + 
  geom_point() + 
  geom_line(aes(x = mpg, y = predictions))
