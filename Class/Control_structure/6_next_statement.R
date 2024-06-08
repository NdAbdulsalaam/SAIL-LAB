# Next Statement
# The next statement causes the loop to skip the current iteration and move to the next one
# Here is some examples

mutum <- c(1 : 22) 

for (i in mutum) {
  if(i == 5 || i == 7 || i == 9) {
    print("Baya nan")
    next
  }
  print(paste("Wona mutu ni ", i))
}
