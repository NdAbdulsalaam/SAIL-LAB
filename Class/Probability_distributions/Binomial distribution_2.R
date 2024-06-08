# Parameters
n <- 13
p <- 0.75

# Binomial distribution
k <- 0:n
pmf <- dbinom(k, n, p)

pmf

# Plotting the PMF
barplot(pmf, names.arg = k, col = "blue", 
        xlab = "Number of platforms with birds (k)", 
        ylab = "Probability", 
        main = "PMF of Binomial Distribution (n=13, p=0.75)",
        ylim = c(0, max(pmf) * 1.1))

grid(nx = NA, ny = NULL, col = "gray", lty = "dotted")


# b. What is the probability you see birds at all sites?
# Parameters
n <- 13
p <- 0.75

# Probability of seeing birds at all platforms
prob_all_sites <- dbinom(n, n, p)
prob_all_sites

# Parameters
n <- 13
p <- 0.75

# Probability of seeing birds at more than 9 platforms
prob_more_than_9 <- 1 - pbinom(9, n, p)
print(prob_more_than_9)

# Also summing the more than the variables
prob_more_than_9_1 <- sum(dbinom((9:13, n, p))
prob_more_than_9_1

# Probbility of 8 - 11
# Parameters
n <- 13
p <- 0.75

# Probability of seeing birds at between 8 and 11 platforms inclusive using dbinom
prob_8_to_11_d <- sum(dbinom(8:11, n, p))
print(prob_8_to_11_d)

# Using pbinom
prob_8_to_11_p <- pbinom(11, n, p) - pbinom(7, n, p)
print(prob_8_to_11_p)

# Parameters
n <- 13
p <- 0.75

# Probability of seeing birds at fewer than 9 platforms
prob_fewer_than_9 <- pbinom(8, n, p)
print(prob_fewer_than_9)


