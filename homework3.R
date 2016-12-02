library(datasets)
data(mtcars)
?mtcars

#q1
x <- t.test(mtcars$mpg)$conf.int
round(x)

#q2


#q3
x <- mtcars$mpg[mtcars$cyl == 4]
y <- mtcars$mpg[mtcars$cyl == 6]
w <- t.test(x,y, var.equal = T)$conf.int
round(w, 1)

