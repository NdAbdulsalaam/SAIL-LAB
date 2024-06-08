#########
# Write a R program that creates a for loop to print numbers from 1 - 10

for(i in 1:10) {
  print(i)
}

mens <- c(1:10)
print (mens)

for (i in mens) {
  print(i)
}

row_2 <- c("Ayo", "Lara", "Samuel", "Modupe", "Muideen")

for(people in row_2) {
  print(people)
}

print(row_2)


################
# Write a R program that create while loop to calculate
# the factorial of a given number


factorial_while <- function(n) {
  # Initialize result to 1, as the factorial of 0 and 1 is 1
  result <- 1
  
  i <- n
  
  while (i > 1) {
    result <- result * i
    i <- i - 1
  }
  return(result)
}
number <- 5

fact_while <- factorial_while(number)

print(paste("Factorial of", number, "is", fact_while))

# Method 2 :
cal_factorial <- function(n) {
  while (n == 1) {
    return(1)
  }
  while(n > 1) {
    return (n * cal_factorial(n - 1))
  }
}
cal_factorial(5)

# Method 3 : using if else in case of recursion 

factorial_n <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial_n(n - 1))
  }
}
factorial_n(5)
factorial_n(0)


#########
# Write a R program function to find the sum of all even
# numbers between two given numbers using a for loop.

# Method 1:
sum_of_even_numbes <- function(start_num, end_num) {
  sum <- 0
  for (i in start_num:end_num) {
    if(i %% 2 == 0) {
      sum <- sum + i
    }
  }
  return(sum)
}

start_num <- 1
end_num <- 10

result <- sum_of_even_numbes(start_num, end_num)

print(paste("The sum of even numbers between", start_num, "and", end_num, "is", result))

num <- c(1:20)
sum_even <- 0
sum_odd <- 0

for (i in num) {
  if(i %% 2 == 0) {
    sum_even <- sum_even + i
    print(paste("num is even", i))
  } else {
    sum_odd <- sum_odd + i
    print(paste("num is odd", i))
  }
}
print(sum_even)
print(sum_odd)

