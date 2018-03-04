add2 <- function(x,y){
  x + y
}

add2(4,5)


above10 <- function(x){
  use <- x > 10
  x[use]
}

x <- 1:20
above10(x)

above <- function(x,n = 10){
  use <- x > n
  x[use]
}

x<- 1:20

above(x,10)

# calculates the mean of each column - for matrices or dataframes
columnMean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for( i in 1:nc){
    means[i] <- mean(y[,i])
  }
  means
}

# Functions are R objects with class "function"

# pass functions as arguments.. everything that a object can do

# named arguments which potentially have default values

# matching arguments

mydata <- rnorm(100)
sd(mydata)

sd(x = mydata)

sd(x = mydata, na.rm = F)

sd(na.rm = F, x = mydata)

sd(na.rm = F, mydata)

# check for exact match -> partial match -> positional match
# Lazy Evaluation

f <- function(a,b){
  a ^ 2
}
# no error
f(2)

f <- function(a,b){
  print(a)
  print(b)
}
# shows error after printing 45 for a
f(45)

# the ... arguments
myplot <- function(x,y, type= "1",...){
  plot(x,y, type = type, ...)
}

args(paste)
args(cat)

paste("a","b", sep = ":")
paste("a","b", se = ":")

# arguments coming after ... has to be explicitely named

lm <- function(x){x * x}
lm


make.power <- function(n){
  pow <- function(x){
    x ^ n
  }
  pow
}

make.power(2)

cube <- make.power(3)
cube(3)

square <- make.power(2)

square(3)

# Function Closure
ls(environment(cube))
get("n", environment(cube))

# Lexical Vs Dynamic Scoping

y <- 10
f <- function(x){
  y <- 2
  y^2 + g(x)
}

