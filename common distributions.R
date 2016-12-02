        # binomial trials
# 7 or more girls out of 8 births
round(choose(8, 7) * .5^8 + choose(8, 8) * .5^8, 5)
round(pbinom(6, size = 8, prob = .5, lower.tail = FALSE), 5)

        # normal distribution
qnorm(.95, 29, 4.73)

pnorm(24.27, 29, 4.73)

pnorm(1160, 1020, 50, lower.tail =  FALSE)
pnorm(2.8, lower.tail = F)

qnorm(.75, 1020, 50)

        # poisson
ppois(3, 4 * 2.5)

# approximation to binomial
# 500 coin flips with p=0.01, prob of two or fewer successes
pbinom(2, size = 500, prob = 0.01)
ppois(2, 0.01 * 500)
