# for loop

#We use loop in R to perform repeated tasks i.e., loop through sequences to perform repeated tasks.

# Syntax

# for(variable in sequence){

# what/code_to_repeat

# }

# Where:

# variable = iterative variable,

# sequence = sequence which we need to loop through,

# what/code_to_repeat = code that runs every iteration.

melo <- c(1:10)

for (i in melo){
  print(paste0("This is number: ", melo[i], " of 10"))
}

# paste0() function in the code will concatinate the vector and convert to sting 