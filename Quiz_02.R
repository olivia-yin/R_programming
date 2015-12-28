# week 2 quiz
# Q1 


cube <- function(x, n) {
  x^3
}
cube(3)

# Q2 The following code will produce a warning in R. Why?
x <- 1:10
if(x > 5) {
  x <- 0
}
# debug
x <- 1:10
t <- for (i in 1:length(x)){
  if (x > 5) {
    x <- 0
  }
}

# Q3 
f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
z <- 10
f(3)

# Q4
x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
y
# Q5
h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}# free variable : z

# Q6.
# environment: a collection of symbol/value pair.
# Q7.
# type of scoping rule for resolving free variables: Lexical scoping
# Q8.
# free variables in R functions are resolved by:
# The values of free variables are searched for in the environment 
# in which the function was defined.
# Q9.
# one of the consequences of the scoping rules used in R:
# All objects must be stored in memory.
# Q10.
# parent theme: it is the environment in which a function was called.