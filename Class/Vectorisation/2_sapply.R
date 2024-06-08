# Sapply 

# The sapply() is similar to lapply(),
# It is used when the function being applied returns a vector or list.
# Has the characteristics of a matrix

x <- list(c(1:10))

y <- sapply(x, function(n) n^2)

y