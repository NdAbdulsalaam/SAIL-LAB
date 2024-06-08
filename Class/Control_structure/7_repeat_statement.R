# Repeat Statement

# The repeat loop is useful when we don’t know the required number of iterations. It initially initiates an infinite loop. We must use the break statement to avoid an infinite loop

# The repeat loop is similar to the while loop, but the repeat loop will continue to execute the code until the condition is met.

# repeat {
# code to be executed repeatedly

# check condition

# if (condition) {
  #break
#  }
# }

x <- 21
i <- 11
repeat{
  if (i == x) {
    print("i have found it")
    
    break
    
  }
  
  print("I have not found it")
  
  i <- i+1
}

