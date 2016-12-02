# q1
data("mtcars")
x <- mtcars$mpg
mu <- mean(x)
mu
mu + qnorm(.975) * sd(x) / sqrt(length(x))

# q2
cyl4 <- mtcars[mtcars$cyl == 4, ]$mpg
cyl6 <- mtcars[mtcars$cyl == 6, ]$mpg
t.test(cyl4, cyl6)

# q3
m <- 3
s <- 1.1
m + c(-1, 1) * qnorm(.975) * s / sqrt(100)

# q4
?pbinom
pbinom(54, 100, prob = .5, lower.tail = FALSE)
binom.test(55, 100, alternative = "greater")

# q5
30 * 520
ppois(15799, lambda = 15600, lower.tail = FALSE)
poisson.test(15800, T = 30, r = 520, alternative = "greater")

# q6
x <- 10
y <- 11
# h0: mux = muy, so mux - muy = 0
n <- 100
s <- 4
z <- (y - x) / (s * sqrt(1/n + 1/n))
2 * pnorm(abs(z), lower.tail = FALSE) # two-sided alternative hypothesis

# q8
mu0 <- 10
se <- 4 / sqrt(100)
pnorm(mu0 + qnorm(.95) * se, mean = 11, sd = .4, lower.tail = FALSE)

# q9
s <- 0.04
m <- 0.01
n <- (s * (qnorm(.2) - qnorm(.95)) / m) ^ 2
n

# q11
cyl6 <- mtcars[mtcars$cyl == 6, ]$mpg
cyl8 <- mtcars[mtcars$cyl == 8, ]$mpg
m8 <- mean(cyl8); m6 <- mean(cyl6)
s8 <- sd(cyl8); s6 <- sd(cyl6)
n8 <- length(cyl8); n6 <- length(cyl6)

t.test(cyl6, cyl8, paired = FALSE, var.equal = TRUE)

s <- sqrt(((n6 - 1) * s6^2 + (n8 - 1) * s8^2) / (n6 + n8 - 2))

z <- (m6 - m8) / (s * sqrt(1/n6 + 1/n8))

2 * pnorm(abs(z), lower.tail = FALSE)


