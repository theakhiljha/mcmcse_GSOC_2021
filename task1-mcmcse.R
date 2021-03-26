#Easy
#Task 1 - (i)

library(mcmcse)
foo <- rnorm(1e4)
ess(foo)

#Task 1 - (ii) = Make a random matrix of size 10 x 10 and produce only the eigenvalues of the matrix.

rows = 10
cols = 10
B = matrix(rnorm(n=rows*cols), ncol=cols)
eigen(B, only.values = TRUE)$values
