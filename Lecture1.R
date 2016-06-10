install.packages('ggplot2')
library(ggplot2)
update.packages()

v = c(1,4,4,3,2,2,3)
v[c(2,3,4)]
v[2:4] 
v[c(2,4,3)]
v[-2] 
v[-2:-4]
v[v<3]
which(v==3)

set.seed(250)
a = runif(3, min=0, max=100)
floor(a)
ceiling(a)
round(a,4)

data1=read.csv(file="~/documents/rugby.txt")
data2=read.table(file="~/documents/rugby.txt")
data3=read.csv("http://www.macalester.edu/~kaplan/ISM/datasets/swim100m.csv")
attach(data3)

set.seed(123)
x=rnorm(100,mean=100,sd=10)
set.seed(234)
y=rnorm(100,mean=100,sd=10)
hist(x,breaks=20)
plot(density(x))
plot(x)
boxplot(x,y)
boxplot(time~sex)
qqnorm(x)
qqline(x)
qqplot(x,y)
