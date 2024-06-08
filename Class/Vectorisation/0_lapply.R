# Vectorisation in R

# Vectorisation is a process of creating a single vector (a list of elements) from a set of smaller
# vectors (elements) using “apply (and related) functions”

# lapply
# 
# The lapply() function allows you to perform an operation on a list of elements
# It returns a list of results, each of which is the result of the operation performed on each element in the list.

# Example

x <- list(1:10)

# We can perform an operation on each element x using lapply:

y <- lapply(x, function(n) n^2)

x <- list(c(1:10))

x 

y <- lapply(x, function(n) n/2)

y
