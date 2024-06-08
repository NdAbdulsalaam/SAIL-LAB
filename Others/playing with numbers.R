sum_even = function(num) {
  my_sum <- c()
  for(i in num){
    if(i%%2==0){
      my_sum <- append(my_sum,i)
    }
  }
  print(sum(my_sum))
}
sum_even(c(1:5))

my_sum = function(num) {
  my_even <- 0
  my_odd <- 0
  for(i in num){
    if(i%%2==0){
      my_even <- my_even + i
    } else {
      my_odd <- my_odd + i
    }
  }
  print( paste("Sum of even numbers", my_even))
  print(paste("Sum of odd numbers", my_odd))
}

my_sum(c(1:15))


my_recur <- function(num) {
  
  while(num > 1) {
    return(num * my_recur(num - 1))
  }
}

my_recur <- function(num) {
  if(num != 0) {
    return(num * my_recur(num - 1))
  } else {
    return(1)
  }
}

my_recur(5)
