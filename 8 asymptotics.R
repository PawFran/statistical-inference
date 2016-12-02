coinPlot(10)
coinPlot(10000)

qnorm(.95)

.6 + c(-1, 1) * qnorm(.975) * sqrt(.6 * .4 / 100)
binom.test(60, 100)$conf.int

mywald(.2)
# coverage is low for low n. usually best for p around 1/2. 
# may use add two successes and two failures to improve coverage (and also make intervals wider)

ACCompar(20)

        # poisson
lamb <- 5 / 94.32
lamb + c(-1, 1) * qnorm(.975) * sqrt(lamb / 94.32)
poisson.test(5, 94.32)$conf
# coverage is low for small lambda vals
# coverage gets better when units of time are increased!