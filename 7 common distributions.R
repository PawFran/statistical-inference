        ### binomial dist ###
choose(5, 3) * .8^3 * .2^2 + choose(5, 4) * .8^4 * .2^1 + choose(5, 5) * .8^5
pbinom(2, size = 5, prob = .8, lower.tail = FALSE)

        ### normal dist ###
qnorm(.1)
0

qnorm(.975, mean = 3, sd = 2)
1.96*2 + 3

pnorm(1200, 1020, 50, lower.tail = FALSE)
pnorm((1200 - 1020) / 50, lower.tail = FALSE)

qnorm(.75, 1020, 50)

.53
.53

        ### poisson ###
ppois(3, 4 * 2.5)

pbinom(5, size = 1000, prob = .01)
ppois(5, 1000 * .01)
