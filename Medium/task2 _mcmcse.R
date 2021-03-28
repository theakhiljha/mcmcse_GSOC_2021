## Task 2: Implement an efficiency profile of the batchSize() function using profvis. Do this for varying sizes of input matrices.


set.seed(100)

library(mcmcse)
library(profvis)

#Test 1

times <- 1e4
cols <- 10
A <- as.data.frame(x = matrix(rnorm(times * cols, mean = 2), ncol = cols))

profvis({
  A1 <- A
  batchSize(A1)
})


#Test 2

times <- 3e5
cols <- 11
B <- as.data.frame(x = matrix(rnorm(times * cols, mean = 3), ncol = cols))

profvis({
  B1 <- B
  batchSize(B1)
})

#Test 3

rows = 10
cols = 10
C = matrix(rnorm(n=rows*cols), ncol=cols)
eigen(C, only.values = TRUE)$values

profvis({
  C1 <- C
  batchSize(C1)
})

#Test 4 

times <- 2e5
rows <- 19
D <- as.data.frame(x = matrix(rnorm(times * rows, mean = 3), nrow = rows))

profvis({
  D1 <- D
  batchSize(D1)
})


