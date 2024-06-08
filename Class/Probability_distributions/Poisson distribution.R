#Examples of calculating Poisson probabilities:

# Calculate the probability of 3 successes, given a mean of 5

dpois(3, 5)


x = rpois(n = 100, lambda = 1)

plot(x, type = "h", xlab = "Number of success", ylab = "Probability")

# Example
# The number of SAIL participants that visit the materials website is Poisson with a mean of 2.5
# per hour.

# If we observe the website for 4 hours, what is the probability that 3
# or fewer participants will visit the website?

ppois(3, lambda = 2.5 * 4)

x <- 1:4
lamb <- 2.5

sum(dpois(0:3, lamb) * dpois(x, lamb))

# dpois stands for Density Probability of a Poisson random variable
# ppois stands for cumulative probability of a Poisson random variable