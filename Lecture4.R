#Bar Chart
library(vcd)
counts = table(Arthritis$Improved)
counts
par(mfrow=c(2,2))
barplot(counts,
        main="Simple Bar Plot",
        xlab="Improvement", ylab="Frequency")

barplot(counts,
        main="Horizontal Bar Plot",
        xlab="Frequency", ylab="Improvement",
        horiz=TRUE)

counts <- table(Arthritis$Improved, Arthritis$Treatment)
counts

barplot(counts,
        main="Stacked Bar Plot",
        xlab="Treatment", ylab="Frequency",
        col=c("red", "yellow","green"),
        legend=rownames(counts))

barplot(counts,
        main="Grouped Bar Plot",
        xlab="Treatment", ylab="Frequency",
        col=c("red", "yellow", "green"),
        legend=rownames(counts), beside=TRUE)

#Pie Chart
library(plotrix)
par(mfrow=c(2,2))
slices <- c(10, 12,4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls,main="Simple Pie Chart",edges=300,radius=1)
pct <- round(slices/sum(slices)*100)
lbls2 <- paste(lbls, " ", pct, "%", sep="")
pie(slices, labels=lbls2, col=rainbow(length(lbls2)),
    main="Pie Chart with Percentages",edges=300,radius=1)
pie3D(slices, labels=lbls,explode=0.5,
      main="3D Pie Chart ",edges=300,radius=1)
mytable <- table(state.region)
lbls3 <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable,labels=lbls3,
    main="Pie Chart from a Table\n(with sample size)",
    edges=300,radius=1)
#Fan Plot
slices <- c(10, 12,4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
fan.plot(slices, labels = lbls, main="Fan Plot")

#Dot Chart
dotchart(mtcars$mpg, 
         labels=row.names(mtcars),cex=0.7,
         main="Gas Mileage for Car Models",
         xlab="Miles Per Gallon")

#summary
head(mtcars)
summary(mtcars)

#Tables
attach(mtcars)
table(cyl)
summary(mpg)
table(cut(mpg,seq(10,34,by=2)))

#Correlations
states = state.x77[,1:6]
cov(states)
var(states)
cor(states)

#T test
x = rnorm(100, mean = 10, sd = 1)
y = rnorm(100, mean = 30, sd = 10)
t.test(x, y, alt = "two.sided",paired=TRUE)

#Wilcoxon
wilcox.test(x,y,alt="less")


#Practical Example
data=read.csv("~/documents/R Programming/project/STAT.csv")
attach(data)
layout(matrix(c(1,1,2,3),2,2,byrow=TRUE))
hist(difference,col="blue")
hist(Target,col="blue")
hist(Walmart,col="blue")

par(mfrow=c(2,1))
boxplot(data[2:4],horizontal=TRUE)
boxplot(difference,horizontal=TRUE)

par(mfrow=c(1,1))
qqnorm(difference)
qqline(difference)
t.test(difference,alter="two.sided")
binom.test(length(difference[difference>=0]),
           length(difference), 
           alter="two.sided")
wilcox.test(difference,alter="two.sided")

library(nortest)
ad.test(difference)
