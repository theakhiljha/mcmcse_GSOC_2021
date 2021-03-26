#Easy
#Task 1 - (i)

# Adding set.seed() function in order to get same result while generating a sequence of random numbers.

set.seed(100)
library(mcmcse)
foo <- rnorm(1e4)
ess(foo)

#Task 1 - (ii) = Make a random matrix of size 10 x 10 and produce only the eigenvalues of the matrix.

rows = 10
cols = 10
B = matrix(rnorm(n=rows*cols), ncol=cols)
eigen(B, only.values = TRUE)$values

