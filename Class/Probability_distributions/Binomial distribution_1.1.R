###### Probability Binomial ----
# For a list
x.prob <- dbinom ( x = 5, size = 8, prob = 1/6)
x.prob

######## Probability Binomial ----
# For a vector
x.prob <- dbinom ( x = 0:8, size = 8, prob = 1/6)
x.prob
bar
# finding the sum
sum(x.prob)
 # approximation to 3 decimal places
round(x.prob)

# The pbinom Function
sum(dbinom(x=0:3, size = 8, prob = 1/6))
pbinom(q=3,size=8,prob=1/6)
1-pbinom(q=2,size=8,prob=1/6)
qbinom(p=0.95,size=8,prob=1/6)
rbinom(n=1,size=8,prob=1/6)
rbinom(n=1,size=8,prob=1/6)
rbinom(n=1,size=8,prob=1/6)
rbinom(n=3,size=8,prob=1/6)




