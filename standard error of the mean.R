#simulation - standard error of the mean
nosim <- 1000
n <- 10
?sd()
#losowanie 1000 razy 10 probek z rozkladu normalnego. 
#nowa zmienna - srednia z losowania
#obliczanie odchylenia z probki z nowej zmiennej
sd(apply(matrix(rnorm(nosim*n), nosim), 1, mean))
1/sqrt(10) #sample standard error of the mean

#losowanie z rozkladu jednostajnego
nosim <- 1000
n <- 10
sd(apply(matrix(runif(nosim*n), nosim), 1, mean))
#unif ma wariancje 1/12
1/sqrt(12*n)

#losowanie z rozkladu poissona(4)
nosim <- 1000
n <- 10
sd(apply(matrix(rpois(nosim*n, 4), nosim), 1, mean))
#pois(4) ma wariancje 4
2/sqrt(n)

#rzut moneta
nosim <- 1000
n <- 10
?sample()
sd(apply(matrix(sample(0:1, nosim*n, replace=T), nosim), 1, mean))
#wariancja wynosi 1/4
1/(2*sqrt(n))
