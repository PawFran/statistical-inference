library(swirl)
options(editor = 'internal')
swirl()

# plot density functions
myplot(2)
myplot(20)

# plot quantiles
myplot2(2)
qt(.975, 2)
myplot2(20)

    # example using sleep data
sleep
range(g1)
range(g2)
difference <- g2 - g1
mean(difference)
s <- sd(difference)
# computing confidence interval
mn + c(-1, 1) * qt(.975, 9) * s / sqrt(10)
t.test(difference)$conf.int

#show 4 different calls to t.test
#display as 4 long array
rbind(
    mn + c(-1, 1) * qt(.975, n-1) * s / sqrt(n),
    as.vector(t.test(difference)$conf.int),
    as.vector(t.test(g2, g1, paired = TRUE)$conf.int),
    as.vector(t.test(extra ~ I(relevel(group, 2)), paired = TRUE, data = sleep)$conf.int)
)

    # another example - independent groups
sp <- 7 * 15.34^2 + 20 * 18.23^2
ns <- 7 + 20
sp <- sqrt(sp / ns)
132.86 - 127.44 + c(-1, 1) * qt(.975, ns) * sp * sqrt(1/8 + 1/21)

    # sleep example again - groups treated as independent
sp <- sqrt((9 * var(g1) + 9 * var(g2)) / 18)
md + c(-1, 1) * qt(.975, 18) * sp * sqrt(1/10 + 1/10)
t.test(g2, g1, paired = FALSE, var.equal = TRUE)$conf
t.test(g2, g1, paired = TRUE)$conf

    # blood pressure example - unequal variances
num <- (15.34^2 / 8 + 18.23^2 / 21)^2
den <- (15.34^4 / 8^2 / 7)  +  (18.23^4 / 21^2 / 20)
mydf <- num / den
132.86 - 127.44 + c(-1, 1) * qt(.975, mydf) * sqrt(15.34^2 / 8 + 18.23^2 / 21)
