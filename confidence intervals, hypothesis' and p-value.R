library(UsingR)
t.test(father.son$sheight - father.son$fheight)
?t.test
t.test(father.son$sheight, father.son$fheight, paired = T)


# 8 children, 7 of which are girls
# if p = .5 what's the prob. of that ?
pbinom(6, size = 8, prob = .5, lower.tail = F)
# p-value is less than 0.05, reject hypothesis

?ppois()
ppois(9, 5, lower.tail = F)
# p-value is less than 0.05
