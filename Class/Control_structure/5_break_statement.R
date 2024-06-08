# Break Statement

# The break statement is used to “break” us out of the loop early. For instance, if we are looking for an element in a sequence, the loop will go on until it finds the element or until the end of the sequence. If it finds the element early, before the end of the sequence, it stops from continuing with the loop.

participant <- c(1:30)

for (someone in participant) {
  print(paste("This is participant number ", someone))
  if (someone == 20) {
    print("participant number 20 has been found !!")
    
    break
  }
}

# Example two
participants <- c('Squarepants', 'Star', 'Tentacles', 'Krabs', 'Cheeks', 'Squirrel', 'The Lobster', 'Snail', 'Crabs', 'Efraim', 'Krabs', 'Snail', 'Firey', 'Puff')

for(i in participants){
  
  print(paste("This is participant ", i, " I am still looking for Efraim"))
  if(i == "Efraim"){
    print("Efraim has been found out")
    
    break
  }
}