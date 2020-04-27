x<-list(a = 1:5, b = rnorm(10)) 
lapply(x, mean)

x <- 1:4
lapply(x, runif, min = 0, max = 0)

x<-list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2)) 
#gives us the first row of the matrix
lapply(x, function(elt) elt[,1])

function (X, FUN, ...)
{
	FUN <- match.fun(FUN)
	if(!is.vector(X) || is.object(X)) 
	{
		X <- as.list(X)
		.Internal(lapply(X, FUN))
	}
}

############################################################

x<-matrix(rnorm(200), 20, 10)
#outputs all the rows
apply(x, 2, mean)
#outputs all the columns
apply(x, 1, mean)

############################################################

#mapply
#And the function that you're going to pass to mapply has to have, the number
#of arguments that the function takes has to be at least as many as the number
#of lists that you're going to pass to mapply. 

list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
mapply(rep, 1:4, 4:1)  


noise<- function(n, mean, sd)
rnorm(n, mean, sd)
noise(5,1,2)
mapply(noise, 1:5, 1:5, 2)


############################################################
tapply
x<-c(rnorm(10), runif(10), rnorm(10,1))
f<-g1(3,10)
#f
tapply(x, f, mean)
tapply(x, f, mean, simplify = FALSE)
tapply(x, f, range)


############################################################
#split
x<-c(rnorm(10), runif(10), rnorm(10,1))
f<-g1(3,10)
split(x,f)

lapply(split(x, f), mean)
library(datasets)
head(airquality)

#Calculate mean each month of the dataset
s<-split(airquality, airquality$Month) 
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R","Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R","Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R","Wind")], na.rm = TRUE))


#Different levels
x<-rnorm(10)
f1<-gl(2,5)
f2<-gl(5,2)
interaction(f1, f2) 
str(split(x, list(f1, f2)))
str(split(x, list(f1, f2), drop = TRUE)) 
