# Array
# Arrays are collections of matrices stacked on top of the other (homogeneous data structures). They are three dimensional.
# The array() can be used to create an array.
# array_name = array(data, dim, dimnames)

arr1 <- array(c(1:18), dim = c(2, 3, 3))
arr1

# The dimension(2, 3, 3) simply means 2 rows, 3 column and 3 matrix

arr <- array(c(1:48), dim = c(4,3,4))
arr

rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3", "row4")
matrix_name <- c("Olu", "Gift", "Ajala")
arr <- array(c(1:40), dim = c(4, 4, 3), dimnames = list(rownames, colnames))
arr

fac <-factor(arr)
fac

# Exercise 1 You can attempt achieving same by combining vectors to form the matrices.

# Hint c(vector_1, vector_2)

vector_1 <- c(1:4)
vector_2 <- c(0, 7, 8, 1)
combined_vector <- c(vector_1, vector_2)
matrix_0 <- array(c(combined_vector), dim = c(2, 2, 2))
matrix_0

# Exercise 2 Print out element with numerical value 40 from the array!

# Hint print(array_name[r,c, m])

num_value <- array(c(1:40), dim = c(4, 4, 3))
num_value
print(num_value[4, 2, 3])
num_value[,, 1] * num_value[,, 2]

