#Bernoulli distribution
#mean=p, variance=p(1-p)

#binomial distribution - sum of Bernoulli distributed variables
#total number of heads
#P(X=x) = choose(n,k)*p^k(1-p)^(n-k)

#probability of seven heads
choose(8,7) * .5 ^ 8 + choose(8,8) * 0.5 ^ 8

?pbinom
#P[X>x]
pbinom(6, size=8, prob=0.5, lower.tail = F)
#P[X<=x]
1 - pbinom(6, size=8, prob=0.5, lower.tail = T)



#normal distribution
#dla rozkladu N(m,s) P(X nalezy do (m-s,m+s)) jest takie samo
#jak P(X nalezy do (-1,1)) dla N(0,1) i wynosi ok 0.683
#P(X nalezy do (m-2*s,m+2*s) wynosi ok 0.956
#P(X nalezy do (m-3*s,m+3*s) wynosi ok 0.997

#if X~N(m,s^2) then Z=(x-m)/s ~ N(0,1)
#if Z~N(0,1) then X = m + s*Z ~ N(m,s^2)

#kwantyle rzedu 0.1=-1.28; 0.05=-1.645; 0.025=-1.96; 0.01=-2.33
#ogolnie: jesli X~N(m,s^2), kwantyl 0.1=m-1.28*s
qnorm(.1); qnorm(.05); qnorm(.025); qnorm(.01)

#kwantyl rzedu 0.95 X~N(m,s^2)
m=10; s=1.3
qnorm(.95, mean=m, sd=sqrt(s))

#inaczej: m + s*1.645

#P(zmienna o rozkladzie ~ N jest wieksza od x)
1-pnorm(x, mean=m, sd=sqrt(s))
#albo
pnorm(x, mean=m, sd=sqrt(s), lower.tail = F)

pnorm(1160, mean=1020, sd=50, lower.tail=F)
#1160 is 2.8 sd from the mean, (1160-1020)/50=2.8
pnorm(2.8, lower.tail = F)

qnorm(0.75, mean=1020, sd=50)


#Poisson distribution
#count data
#event-time or survival data
#contingency tables
#approximating binomial fo large n and small p, for example
#in epidemiology

#taking sample and classifying and looking at the counts - 
#contingency table
s
#modelling rates
#X~Pois(l*t)
#l=E[X/t] - expected count per unit of time
#t-total monitoring time

#number of people showing up at bus stop is 2.5 per hour.
#watching four hours, what is prob that 3 or fewer people 
#show up on a stop
ppois(3, lambda = 2.5 * 4)

#X~Binomial(n,p), n is large, p is small
#lambda=n*p

#flip a coin with prob of success=0.01 five hundred times
#prob of 2 or fewer successes
pbinom(2, size=500, prob=0.01)
ppois(2, lambda = 500 * 0.01)
