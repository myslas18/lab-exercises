## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)
?sum

# Describe why this doesn't work: 
# the system is expecting to "sum" all the values in the argument
# in this case, the sum is of a string and an interger, since you 
# cannot sum a number and a string, an error of invalid 'type' is displayed

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# we ar referencing a function that has not been created, therefore the 
# "could not find function" is displaying

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# you must create all variables before referencing them later
# in this example, variable "initial" has not yet been created and since the 
# program can not find the variable, it results in an error


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
my.cats <- c("Cat1", "Cat2", "Dog")
?typeof
typeof(my.cats)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  N <- length(v1) - length(v2)
  difference <- "The difference in lengths is"
  return.answer <- paste(difference, N)
  return(return.answer)
  
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1, 15, 7, 9)
v2 <- c(14, 12, 6, 8, 9, 10)
CompareLength(v1, v2)



# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  if(length(v1) > length(v2)) {
    N <- length(v1) - length(v2)
    difference <- (paste("Your first vector is longer by", N, "elements"))
  } else {
    N <- length(v2) - length(v1)
    difference <- (paste("Your second vector is longer by", N, "elements"))
  }
  return(difference)
  
  
}
# Pass two vectors to your `DescribeDifference` function
v1 <- c(1, 15, 7, 9)
v2 <- c(14, 12, 6, 8, 9, 10)
DescribeDifference(v1, v2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  
  return(paste(v1, v2, v3))
}
# Send 3 vectors to your function to test it.
v1 <- c(1, 15, 7, 9)
v2 <- c(14, 12, 6, 8, 9, 10)
v3 <- c("cat", "dog")
CombineVectors(v1, v2, v3)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  gsub(courses, "A", " ")
  
}



