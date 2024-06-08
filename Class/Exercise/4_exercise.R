solver <-  function(a, b, c) {
  determ <- b^2 -4*a*c
  if(determ > 0){
    p_form <- (-b + sqrt(determ)) / (2*a)
    n_form <- (-b - sqrt(determ)) / (2*a)
    cat("Answers: ", p_form, "&", n_form, "\n")
  } else if (determ == 0) {
    form = -b / (2*a)
    cat("Answer: ", form, "\n")
  } else {
    cat("The equation has no real root. Check your input and try again\n")
  }
}

solver(2,3,1)
