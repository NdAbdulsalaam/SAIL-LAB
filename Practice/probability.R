X <- dbinom(x=8:11,size=13,prob=3/4)
sum(X)

barplot(X,names.arg=10:13,space=0,xlab="x",ylab="Pr(X = x)")

num <- c(1:10)

for(i in num){
  if(i %in% c(5,7,9)) {
    print(paste(i, "is our student"))
    next
  }
  print(paste(i, 'is not our student'))
}


library(microbenchmark)

?sample

num <- sample(1:100, 10,replace = TRUE)  # Sample data
num
# Using %in%
code_in <- function() {
  for(i in num) {
    if(i %in% c(5, 7, 9)) {
      print(paste(i, "is our student"))
      next
    }
    print(paste(i, 'is not our student'))
  }
}

# Using || 
code_or <- function() {
  for(i in num) {
    if(i == 5 || i == 7 || i == 9) {
      print(paste(i, "is our student"))
      next
    }
    print(paste(i, 'is not our student'))
  }
}

my_list <- c()
my_list <- append(my_list, 4)
my_list

# Benchmarking
microbenchmark(code_in(), code_or(), times = 100)
?length()

mean_fxn <- function(num){
  return(sum(num)/length(num))
  sum <- sum(num)
  count <- length(num)
  mean <- sum/count
  return(mean)
}

std_fxn <-  function(num) {
  sum <- sum(num)
  count <- length(num)
  mean <- sum/count
  my_list = c()
  for (i in num) {
    #print(my_list)
    temp <- (i - mean)^2
    my_list <- append(my_list, temp)
  }
  var <- sum(my_list)/(count)
  std <- var^0.5
  return(std)
}

std_fxn2 <-  function(num) {
  mean <- mean_fxn(num)
  count <- length(num)
  my_list = c()
  for (i in num) {
    print(my_list)
    temp <- (i - mean)^2
    my_list <- append(my_list, temp)
  }
  var <- sum(my_list)/(count)
  std <- var^0.5
  return(std)
}


test_num <- rnorm(10)
test_num
mean(test_num)
mean_fxn(test_num)

#sd(test_num)
std_fxn(test_num)
std_fxn2(test_num)
