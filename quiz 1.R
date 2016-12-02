x=1:4
p=x/sum(x)
temp=rbind(x,p)
rownames(temp)=c("X", "prob")
temp

#jak wymnozyc w jednym poleceniu ?
mean=0.1*1 + 0.2* 2 + 0.3*3 + 0.4*4

sum=0
for(i in 1:4){
     sum = sum + temp[1,i]*temp[2,i]
     mean=sum
}
print(mean)

#jak z uzyciem apply ?

sum(x*p)

sum(temp[1,] * temp[2,])


#function for q6
t_given_positive = function(sens, specif, prev){
    t = (sens*prev) / (sens*prev + (1-specif)*(1-prev))
    #print(sens*prev)
    #print(sens*prev + (1-specif)*(1-prev))
    print(t)
}
t_given_positive(0.75, 0.52, 0.3)
