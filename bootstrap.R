library(UsingR)
data(father.son)
x <- father.son$sheight
n <- length(x)
B <- 10000
resamples <- matrix(sample(x,
                           n * B,
                           replace = TRUE),
                    B, n)
medians <- apply(resamples, 1, median)

# estimated standard error of the median
sd(medians)

# confidence interval for the median
quantile(medians, c(.025, .975))

# plotting a histogram
g <-  ggplot(data.frame(medians = medians), aes(x = medians))
g <-  g + geom_histogram(color = "black", fill = "lightblue", binwidth = 0.05)
g
