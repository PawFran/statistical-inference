x=c(-0.5,0,1,1,1.5)
y=c(0,0,2,0,0)
plot(x,y,lwd=3,frame=F,type="l")
pbeta(0.75,2,1)
pbeta(c(0.4,0.5,0.6),2,1)
qbeta(0.5,2,1)


#expected values
install.packages("ggplot2")
install.packages("manipulate")
library(manipulate)
?manipulate
