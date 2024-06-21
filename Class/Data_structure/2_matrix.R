# Matrix
# Matrix has both row and column i.e two-dimentional homogeneous data structure
# basic data_structure of matrix is matric(data, nrow, ncol, byrow, dimnames)

#Matrix arguements:
  
# data is the input values given as a vector,

# nrow is the number of rows,

# ncol is the number of columns,

# byrow (logical) which tells the function to arrange the matrix row-wise. It is by default set to FALSE,

# dimnames is a list of the names of the rows/columns created.

# We will create a 4 X 4 order matrix with values from 1 to 16 (column-wise order).

matrix_1 <- matrix(c(1:16), ncol = 4)
# c(1:16) is a vactor of numbers from 1 to 16
# ncol = number of column 
matrix_1

muideen <- matrix(c(1:20), ncol = 4, nrow = 5)
muideen

# non-sequential vector

yemi = matrix(c(33, 23, 87, 98, 98, 70), ncol = 3, nrow = 2)
yemi


rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3", "col4")
matrix_2 <- matrix(c(1:16), ncol = 4, dimnames = list(rownames, colnames))
matrix_2





