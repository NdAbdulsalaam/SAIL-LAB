set.seed(234)

x = rnorm(n = 100, mean = 10, sd = 1)

plot(x, type = "h", xlab = "Trials", ylab = "Values")

hist(x, main = "Normal Distribution", col = "lightblue")


set.seed(234)
# Using the qnorm function

n <- 10 #set sample size
mu <- 0 #mean
sd <- 5 #standatd deviation

qnorm(runif(n), mean = mu, sd = sd) #Generate 10 random normally distribution

# Generating a Normal Distribution 2

set.seed(234)
# Generating 100 samples from a normal distribution with mean of 10 and sd 1
x <- rnorm(100, mean = 10, sd = 1)

# Plot the samples
hist(x, main = "Normal Distribution", col = "lightblue")

# Generating and plotting samples from a standard normal distribution
y <- rnorm(100000)

hist(y, main="Standard Normal Distribution", col="lightgreen")
