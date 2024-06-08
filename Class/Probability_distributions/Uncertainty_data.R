# We can visualize the uncertainty of data by predicted residual errors 
# Step 1 : Residual Error 
my_data <- mtcars 
my_model <- lm(qsec ~ mpg, data = my_data)


# Make Predictions 
predictions <- predict(my_model, newdata = my_data)

my_data$err <- (predictions - my_data$qsec)
# Step 2 : Plot Prediction with residuals
ggplot(data = my_data) + 
  geom_point(aes(x=mpg, y = qsec)) + 
  geom_line(aes(x = mpg, y = predictions)) +
  geom_line(aes(x=mpg, y=err), colour = "red")+
  geom_hline(yintercept = 0)
# To understand the uncertainty, we look at the range of residual errors 
min(my_data$err); max(my_data$err)
# The residual errors show that the mpg is correlated with qsec. 
# The uncertainty range is between -3.64 and 2.64 
# This means that as mpg changes, we can predict the qsec range with some uncertainty.