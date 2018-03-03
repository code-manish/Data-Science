getwd() # get the current working directory
dir() # same as dir() command on cmd . Lists all the directories in the working directory

setwd("F:\\datasciencecoursera/") # setting the working directory to the directory where you want to store
# all the data files and r codes

# creating a function
 # x loads 1000 random values and returns its mean value
myfunction <- function(){
  x <- rnorm(1000)
  mean(x)
}

# calling the function
myfunction()

# sourcing the R script. to run the code afterwards
source("day1.R")


