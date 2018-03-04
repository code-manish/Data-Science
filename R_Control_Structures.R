x <- 3
if(x > 3){
  y <- 10 
} else {
  y <- 0
} 

y

y <- if(x > 3){
  10
}else{
  0
}

# for loop

for(i in 1:10){
  print(i)
}

x<- c("a","b","c","d","e")

for( i in 1:5){
  print(x[i])
}

for (i in seq_along(x)){
  print(x[i])
}

for (letter in x){
  print(letter)
}

for ( i in 1:4)print(x[i])

x <- matrix(1:6,2,3)
x

for(i in seq_len(nrow(x))){
  for( j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

# While loops

count <- 0
while(count < 10){
  print(count)
  count <- count +1
}

z <- 5
while(z >= 3 && z <= 10){
  print(z)
  coin <- rbinom(1,1,0.5)
  if(coin == 1){
    z <- z +1
  } else {
    z <- z +1
  }
}
?rbinom

# repeat 

# code comes here..

# next - to skip iteration of the loop

for(i in 1:100){
  if(i <= 20){
    next
  }
  print(i)
}

# break is used to come out of the loop
# return - a function should exit and return the value








