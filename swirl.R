##########################################
#Lesson 8: Logical Operators
##########################################
#result(#) used to represent stored values for printing in console

#Should output to TRUE FALSE FALSE because TRUE gets recycled to the rest of 
#the elements in the evaluation  
result1 <- TRUE & c(TRUE, FALSE, FALSE)

#Should output TRUE because only the first elements get evaluated 
result2 <- TRUE && c(TRUE, FALSE, FALSE)

#The OR operator follows a similar set of rules.
#The `|` version of OR evaluates OR across an entire vector, while the `||` 
#version of OR only evaluates the first member of a vector.

#should output to TRUE TRUE TRUE because the single OR operator returns TRUE
#if TRUE is evaluated on either side of the expression 
result3 <- TRUE | c(TRUE, FALSE, FALSE)

#should output TRUE based on same reasoning as && operator
result4 <- TRUE || c(TRUE, FALSE, FALSE)

#First the left and right operands of the AND operator are evaluated. 
#6 is not equal 8, 4 is greater than 3.9, therefore both operands are TRUE so
#the resulting expression `TRUE && TRUE` evaluates to TRUE.
#Then the left #operand of the OR operator is evaluated: 
#5 is not greater than 8 so the entire expression is reduced to FALSE || TRUE.
#Since the right operand of this expression is TRUE the entire expression
#evaluates to TRUE.
result5 <-( 5 > 8 || 6 != 8 && 4 > 3.9 )

#Function manipulation with logical operators
#returns true if inside expression is true
result6 <- isTRUE(6 > 4)

#returns true if both objects passed in are true
result6 <- identical('twins', 'twins')
result7 <- identical(5 > 4, 3 < 3.1)

#returns true if one argument evaluates to true, false otherwise
#should return true because arguments make out (TRUE,FALSE)
result8 <- xor(5 == 6, !FALSE)
result9 <- xor(4 >= 9, 8 != 8.0)


#random vector of integers
ints <- sample(10)
#print(ints)

#prints out indices of the vector that return true
#print(which(ints > 7))

#prints out true if any of the elemtns in the logical vector is true
#print(any(ints < 0))

#prints out true if all elements are greater than 0
#print(all(ints > 0))


##########################################
#Lesson 9: Functions
##########################################
#val(#) used to represent stored values for printing in console

#Returns current date
val1 <- Sys.Date()

#Passing arguments
#Mean function takes a vector and returns mean 
val2 <- mean(c(2, 4, 5))

#last value gets returned
boring_function <- function(x) {
  x
}

#calculates the mean of a vector without using the mean function
my_mean <- function(my_vector) {
	vecSum <- sum(my_vector)
	vecLength <- length(my_vector)
	vecMean <- (vecSum / vecLength)
	vecMean
}

# You're going to write a function called "remainder." remainder() will take
# two arguments: "num" and "divisor" where "num" is divided by "divisor" and
# the remainder is returned. Imagine that you usually want to know theremainder
# when you divide by 2, so set the default value of "divisor" to 2. Please be
# sure that "num" is the first argument and "divisor" is the second argument.
remainder <- function(num, divisor = 2) {
	remains <- (num %% divisor)
	remains

}

add_two_numbers <- function(num1, num2){
    num1 + num2
}

multiply_two_numbers <- function(num1, num2){
	num1 * num2
}

some_function <- function(func){
    func(2, 4)
}

eval <- function(func, dat){
  # Write your code here!
  # Remember: the last expression evaluated will be returned! 
  func(dat)
}
#eval(function(x) {x+1}, 6)
#ouputs 7

telegram <- function(...){
  paste("START", ..., "STOP")
}

mad_libs <- function(...){
  # Do your argument unpacking here!
  args <- list(...)
  place <- args[["place"]]
  adjective <- args[["adjective"]]
  noun <- args[["noun"]]
  
  # Don't modify any code below this comment.
  # Notice the variables you'll need to create in order for the code below to
  # be functional!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}
