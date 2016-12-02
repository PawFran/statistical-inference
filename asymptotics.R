#Law of the large numbers
#average limits to population means

?cumsum()
cumsum(1:5)

#ciag srednich coraz wiekszej liczby obserwacji
n <- 1000
means <- cumsum(rnorm(n))/(1:n)
head(means)
tail(means)
#how to plot by index

means <- cumsum(sample(0:1, n, replace=T))/(1:n)

plot(1:n, means)
abline(h=.5)

#consistent est. - converges to what you want to estimate
#LLN - sample mean of iid samples is consistent
#for the population mean

#also sample variance and sample sd are consistent 


#central limit theorem
#normalised distribution of averages limits to 
#standard normal
#estymator X ma rozklad w przyblizeniu ~ N(m,(s^2)/n)
#(X-m)*sqrt(n)/s ~ N(0,1)

#example - simulate st. normal by rolling a die
#m=3.5; s^2=2.92; SE=sqrt(2.92/n)=1.71/sqrt(n)
#rolling n dice. (emp_mean-3.5)*sqrt(n)/1,71 ~ N(m, s^2)

y=c()
for(i in 1:100000){
  x = sample(1:6, 1000, replace = T)
  y[i] = (mean(x) - 3.5) * sqrt(1000)/1.71
}

#for flipping coin speed of limiting st. normal depends
#on bias of a coin. for large p it's slow
hist(y)

#galton's quincunx


#confidence intervals
library(UsingR)
data(father.son)
x <- father.son$sheight
(mean(x) + c(-1,1) * qnorm(0.975) * sd(x)/sqrt(length(x)))/12
 #/12 to obtain feet rather than inches

