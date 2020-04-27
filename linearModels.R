#Linear Model
set.seed(20)
x <- rnorm(100)
epsilon <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + epsilon
print(summary(y))
#print(plot(x, y))

#What if x is binary
set.seed(20)
a <- rbinom(100, 1, 0.5)
epsilon2 <- rnorm(100, 0, 2)
b <- 0.5 + 2 * a + epsilon2
print(summary(b))
#print(plot(a, b))

#Poisson model
set.seed(1)
c <- rnorm(100)
log.mu <- 0.5 + 0.3 * c 
d <- rpois(100, exp(log.mu))
print(summary(d))
#print(plot(c, d))


#####################################################
#Random Sampling

set.seed(1)
print(sample(1:10, 4))
print(sample(letters, 5))
print(sample(1:10))
print(sample(1:10, replace = TRUE)) #Can get repeats


