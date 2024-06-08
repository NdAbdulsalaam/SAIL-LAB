args(lm)
function (formula, data, subset, weights, na.action,
          method = "qr", model = TRUE, x = FALSE,
          y = FALSE, qr = TRUE, singular.ok = TRUE,
          contrasts = NULL, offset, ...)
  
  
lm(data = yourdata, y ~ x, model = FALSE, 1:100)
lm(y ~ x, yourdata, 1:100, model = FALSE)

your_function_name <- function(abuja, b = 1, c = 2, d = NULL) {
  
}

#######
# Lazy Evaluation_1

f <- function(a, b) {
  a^2
} 
f(2)

#######
# Lazy Evaluation_2
 
f <- function(a, b) {
  print(a)
  print(b)
} 

f(234)

###### 
# Lazy Evaluation_3

f <- function(a, b) {
  print(a^3)
  print(b^3)
}

f(234)