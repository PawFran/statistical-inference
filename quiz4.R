# q1
baseline <- c(140, 138, 150, 148, 135)
week2 <- c(132, 135, 151, 146, 130)
t.test(week2, baseline, alternative = 'less', paired = TRUE)

# q2
n <- 9
m <- 1100
s <- 30
m + c(-1, 1) * qt(.975, n - 1) * s / sqrt(n)

# q3
binom.test(3, n = 4, p = 0.5, alternative = 'greater')
choose(4, 3) * .5 ^ 4 + choose(4, 4) * .5 ^ 4

# q4
poisson.test(10, T = 1787, r = 1 / 100, alternative = 'less')

# q5; x - treated, y - placebo
mx <- -3; my <- 1
sx <- 1.5; sy <- 1.8
nx <- ny <- 9

s <- sqrt(((nx - 1) * sx^2 + (ny - 1) * ny^2) / (nx + ny - 2))
s

ts <- (my - mx) / (s * sqrt(1/nx + 1/ny))
df <- nx + ny - 2
pt(ts, df = df, lower.tail = FALSE)

# q7
s <- 0.04
n <- 100
pnorm(qnorm(.95) * s / sqrt(n), mean = 0.01, sd = 0.04 / sqrt(n), lower.tail = FALSE)

#q8 
s <- 0.04
n <- ( 100 * s * (qnorm(.1) - qnorm(.95)) ) ^ 2
