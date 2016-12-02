library(manipulate)

# compare standard normal and t distributions
k <- 1000
xvals <- seq(-5, 5, length = k)
myplot <- function(df){
    d <- data.frame(y = c(dnorm(xvals), dt(xvals, df)),
                    x = xvals,
                    dist = factor(rep(c("Normal", "T"), c(k,k))))
    g <- ggplot(d, aes(x = x, y = y))
    g <- g + geom_line(size = 2, aes(color = dist))
    g
}
manipulate(myplot(mu), mu = slider(1, 20, step = 1))

pvals <- seq(.5, .99, by = .01)
myplot2 <- function(df){
    d <- data.frame(n= qnorm(pvals),t=qt(pvals, df),
                    p = pvals)
    g <- ggplot(d, aes(x= n, y = t))
    g <- g + geom_abline(size = 2, col = "lightblue")
    g <- g + geom_line(size = 2, col = "black")
    g <- g + geom_vline(xintercept = qnorm(0.975))
    g <- g + geom_hline(yintercept = qt(0.975, df))
    g
}
manipulate(myplot2(df), df = slider(1, 20, step = 1))

    # example of using t-test, sleep data
data("sleep")
head(sleep)

g1 <- sleep$extra[1:10]; g2 <- sleep$extra[11:20]
difference <- g2 - g1
mn <- mean(difference); s <- sd(difference); n <- 10
# calculating directly
mn + c(-1, 1) * qt(.975, n - 1) * s / sqrt(n)
# using R's built-in function
t.test(difference)
# another format
t.test(g2, g1, paired = T) # order matters
# another format
t.test(extra ~ I(relevel(group, 2)), paired = TRUE, data = sleep)


    # group test
library(datasets); data(ChickWeight); library(reshape2)
wideCW <- dcast(ChickWeight, Diet + Chick ~ Time, value.var = "weight")
names(wideCW)[-(1 : 2)] <- paste("time", names(wideCW)[-(1 : 2)], sep = "")
library(dplyr)
wideCW <- mutate(wideCW, gain = time21 - time0)
wideCW14 <- subset(wideCW, Diet %in% c(1, 4))
t.test(gain ~ Diet, paired = FALSE, var.equal = TRUE, data = wideCW14)
