# Tapply

# The tapply() function is used to apply a function to each sub-group of a data set

x<-c(1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4)

y1 <- tapply(x, x,  function(n) n*2)

y1

y2 <- tapply(x, x, function(n) n*n)

y2