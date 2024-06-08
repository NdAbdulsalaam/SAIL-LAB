# Write a R program that will generate a random variable of 
# binomial distribution and arrange it sequentially and print 
# the arrangement

# Custom bubble sort function
bubble_sort <- function(x) {
  n <- length(x)
  for (i in 1:(n-1)) {
    for (j in 1:(n-i)) {
      if (x[j] > x[j+1]) {
        # Swap elements
        temp <- x[j]
        x[j] <- x[j+1]
        x[j+1] <- temp
      }
    }
  }
  return(x)
}

set.seed(123)

# Parameter for binomial distribution
n <- 10 # number of trials
size <- 10 # number of experiments or the range of the number not more than 10
prob <- 0.5 # probability of success in each trials


random_binomial <- rbinom(n = 10, size = 10, prob = 0.5)

print(random_binomial)


sorted_binomial <- bubble_sort(random_binomial)

print(sorted_binomial)

######
# Method 2

sequence <- function(num) {
  sequ <- c()
  while (lenght(num) > 0) {
    leastt <- min(num)
    sequ <- c(sequ, leastt)
    num <- num[num != leastt | duplicated(num)]
  }
  return (sequ)
}

numbers <- rbinom( n = 10, size = 10, prob = 0.5)
numbers

