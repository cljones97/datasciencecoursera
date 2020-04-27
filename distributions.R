#rnorm: Generate random normal variables with a given mean and std
#dnorm: Eval the normal probability density at a point
#pnorm: Eval the cumulative distribution function for a normal distribution
#rpois: Generate random Poisson variables with a given rate

#d for density
#r for random number generation
#p for cumulative distribution
#q for quantile function




dnorm(10, mean = 0, sd = 1, log = FALSE)
pnorm(11, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(12, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(13, mean = 0, sd = 1)

a <- dnorm(10, 20, 2)
print(summary(a))

b <- pnorm(10, 20, 2)
print(summary(b))

c <- qnorm(10, 20, 2)
print(summary(c))

d <- rnorm(10, 20, 2)
print(summary(d))


set.seed(1)
print(rnorm(5))
print(rnorm(5))
set.seed(1)
print(rnorm(5))


print(rpois(10, 1))
print(rpois(10, 3))
print(rpois(10, 10))

#Cumulative distribution
print(ppois(2,2)) #x <= 2
print(ppois(4,2)) #x <= 4
print(ppois(6,2)) #x <= 6


