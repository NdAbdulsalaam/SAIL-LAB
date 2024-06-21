# Data frame
# 2-dimensional heterogeneous DS
# List of vectors of equal lengths
# Constrains of data frame
# Use the data.frames() function to create a data frame,
# Required to have column-names
# Each row is required to have a unique name,
# Each item in a single column is required to be of the same type,
# Column required to have the same number of items,
# Different columns allowed to have different data types.

id <- c(1:10)
name <- c("Olu", "Oke", "Shola", "Kike", "Mary", "Ife", "Ojo", "Ade", "Ike", "Naf")
Position <- c("second", "fifth", "second", "fourth", "first", "absent", "eighth", "tenth", "absent", "sixth")
data_frame <- data.frame(id, name, Position)
data_frame
