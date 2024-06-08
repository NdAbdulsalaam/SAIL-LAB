# Testing & interpreting Hypothesis 

### Generate two normal distributions
x1 = rnorm(n = 10, mean = 0, sd = 1)
x2 = rnorm(n = 10, mean = 0.5, sd = 1)

### Perform t-test
t.test(x1, x2)## Interpret results

### The p-value is less than 0.05, indicating that the means of the two distributions are statistically different.