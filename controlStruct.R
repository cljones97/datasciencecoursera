print("If-Else Control Structures")
#If-Else Statement
x = 10;
if(x > 3)
{
	y <- 10
	# print(y)
} else {
	y <- 0
	# print(y)
}

a = 3
b <- if(a > 3)
{
	10
	# print(b)
} else {
	0
	# print(b)
}

#############################################################
#For Loops
#prints 1 through 10
for(i in 1:10){
	print(i)
}
#prints a, b, c, d all in different ways
print("###############################")
char_vect <- c("a","b","c","d")
for(i in 1:4){
	print(char_vect[i])
}

print("###############################")

for(i in seq_along(char_vect)){
	print(char_vect[i])
}

print("###############################")

for(letter in char_vect){
	print(letter)
}

print("###############################")

for(i in 1:4) print(char_vect[i])

print("###############################")

#prints out all the elements of the matrix
#creates an integer sequence of the rows and columns and outputs the numbers
#should output numbers in 1st row, then numbers in 2nd row
mat <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(mat))) {
	for(j in seq_len(ncol(mat))) {
		print(mat[i, j])
	}
}
print("###############################")

#############################################################
#While Loops
#prints out count 0 through 9
count <- 0
while(count < 10) {
	print(count)
	count <- count + 1
}

print("###############Second While Loop################")
#While z is between 3 and 10
#print z, then flip a coin (a fair coin)
#if the value of the coin is 1, add 1 to the value
#if the value is anything else, decrememnt 1 from the value
z <- 5
while(z >= 3 && z <= 10) {
	print(z)
	coin <- rbinom(1, 1, 0.5)

	if(coin == 1) {
		z <- z + 1
	} else {
		z <- z - 1
	}
}

print("###############################")
#Repeat, Next, Break
for(i in 1:50) {
	if(i <= 20){
		#SKip the first 20 iterations
		next
	}
	print(i)
}


