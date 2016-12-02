pt(2.5, df = 15, lower.tail = FALSE)

# p-value as significance level: smallest value of alpha at which null hypothesis is rejected

qnorm(.95)
qnorm(.99)
pnorm(2)
pnorm(2, lower.tail = FALSE)

# for two-sided tests one has to double smaller of two one-sided p-values

# 8 children, 7 of which are girls. p=.5 vs p!=.5
mybin # at least 'i' girls
pbinom(6, 8, .5, lower.tail = FALSE)
pbinom(7, 8, .5)

# poisson dist example
ppois(9, 5, lower.tail = FALSE)
