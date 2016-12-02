library(UsingR)
data(father.son)
x <- father.son$sheight
n <- length(x)

?round()

round(c(var(x), var(x)/n, sd(x), sd(x) / sqrt(n)), 2)

#var(x) and sd(x) are about variability of heights
#var(x)/n and sd(x)/sqrt(n) are about variability of means of heights