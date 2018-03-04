setwd("F:\\Projects\\coursera\\Data-Science")
getwd()

# R Input and Evaluation

x <- 1 # r expression , numeric object
x 
# x <-  imcomplete expression
 
msg <- "hello world"
msg
# Evaluation
  x <- 5
  x <- 4L
x # auto printing
print(x) # explicit printing

#[1] shows the first element of the vector x

x <- 1:20 # creating a sequence from 1 to 20
x

# R data types 

# creating vectors
x <- c(0.5, 0.6) # numeric
x <- c(TRUE, FALSE) # Logical
x <- c(T,F) # Logical
x <- c("a","b","c") # characters
x <- 9:29 # integers
x <- c(1+0i, 2+4i) #complex

# creates a vector of length 10, all 0's
x <- vector("numeric", length = 10)
x

# implicit coercions
y <- c(1.7,"a") # character
y <- c(TRUE,2) # numeric.. double
y <- c("a",TRUE) # characters
y
typeof(y)

# explicit coercions
x <- 0:6
as.numeric(x)

as.logical(x)

as.character(x)

x

# shows warning as these characters cannot be converted to numbers
x <- c("A","B","C")
as.numeric(x)

as.logical(x) # NA

as.complex(x)  # warning message: NAs introduced by coercion

#lists
x <- list(1,"a",TRUE, 1+4i)
x

# matrices

 m <- matrix(nrow = 2, ncol = 3)
m#initialized with NAs

dim(m) # dimensions of the matrix

attributes(m)

m <- matrix(1:6, nrow = 2, ncol=3) # elements are entered column-wise
m

# another way to create matrix

m <- 1:10
m

dim(m) <- c(2,5)


# cbind and rbind

x <- 1:3
y<- 10:12
cbind(x,y)
rbind(x,y)

# Factors- categorical data.
x <- factor(c("yes","yes","no","yes","no"))
x

table(x)
unclass(x)
# change the baseline , not necessarily everytime, alpabetical order works
x <- factor(c("yes","yes","no","yes","no"), levels = c("yes","no"))

# R missing values

#is.na()
#is.nan()

# NA can have different classes
# returns logical vectors
x <- c(1,2,NA,10,3)
is.na(x)

is.nan(x)

x <- c(1,2,NA,NaN, 4)
is.nan(x)

is.na(x)

# NaN is NA but NA is not NaN

# Data Frames - Tabular data
x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)

# Names attribute
x <- 1:3
names(x)
names(x) <- c("foo","bar","norf")

x <- list(a=1, b=2, c = 3)

m <- matrix(1:4, nrow = 2, ncol= 2)
dimnames(m) <- list(c("a","b"), c("c","d"))

# Reading data in R
# read.table, read.csv - for tabular data
#readLines - for text files
# source, - for  reading R code
# dget - for reading r code files - d parsed in text files
# load - for reading in saved workspaces
#unserialize - for reading single r objects in binary form

# set comment character comment

# reading larger data sets

#initial <- read.table("datatable.txt", nrows = 100)
#classes <- sapply(initial, class)
#tabAll <- read.table("datatable.txt", colClasses = classes)

# Textual Formats

y <- data.frame(a = 1, b = "a")
dput(y)

dput(y, file = "y.R")

new.y <- dget("y.R")
new.y

x <- "foo"
y <- data.frame(a=1,b="a")

dump(c("x","y"), file = "data.R")
rm(x,y)
source("data.R")
y

# Subsetting

x <- c("a","b","c","c","d","a")
x[1]

x[1:4]
# numerical index
x[x > "a"]

#logical index
u <- x >"a"
u


# subsetting lists

x <- list(foo = 1:4, bar = 0.6)
x[1] # returns lists

x[[1]] # return the sequence


x$bar
x[["bar"]]

x["bar"] # returns list with single element of the list

x<- list(foo=1:4, bar = 0.6, baz = "hello")
x[c(1,3)] # extracting multiple elements of the list

x$name # looks for the element name in the list
x[[name]]
name <- "foo"

# Subsetting Matrices

x <- matrix(1:6,2,3)
x[1,2]
x
x[2,1]

x[1,]
x[,2]

x[1,2,drop = F]

x[1,,drop = F]

# Partial Matching

x <- list(aardvark = 1:5)
x$aardvark
x$a

x[["a"]]
x[["a", exact = F]]


# Subsetting - Removing missing values

x <- c(1,2,NA,4,NA,5)
bad <- is.na(x)

x[!bad]

# Removing NA values

x <- c(1,2,NA,4,NA,5)
y <- c("a","b",NA,"d",NA,"f")

good <- complete.cases(x,y)
good
x[good]
y[good]

# Vectorized Operations

x <- 1:4
y<- 6:9

x+y

x> 2
x >= 2

x * y
x /y

# Vectorised Matrix Operatios

x <- matrix(1:4,2,2)
y <- matrix(rep(10,4),2,2)

x
y

x *y

x / y

x %*% y

x <- c(4,"a",TRUE)
class(x)

x <- c(1,3, 5)
y <- 2

x + y
rbind(x,y)
x <- list(2, "a", "b", TRUE)
x[[1]]
class(x[[1]])



x <- c(3, 5, 1, 10, 12, 6)

x[x < 6] <- 0
c
x

x[x %in% 1:5] <- 0



# assignment questions with solutions.. needs to be cleaned

myfile <- read.csv("hw1_data.csv")
head(myfile,47)

nrow(myfile)

tail(myfile,2)

myDF <- data.frame(myfile)
myDF$Ozone

myfile[47]

x <- length(is.na(myDF$Ozone))
x <- complete.cases(myDF$Ozone)
x
length(myDF$Ozone[!x])

mean(myDF$Ozone[x])

myDF


may <- myDF[which(myDF$Month==6),]
may1<- may[complete.cases(may$Temp),]

mean(may1$Temp)





