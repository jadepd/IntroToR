a = c(1, 2, 5, 3, 6, -2, 4)
b = c("one", "two", "three")
c = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

x = matrix(1:20, nrow=5, ncol=4, byrow=TRUE)
x
y = matrix(1:20, nrow=5, ncol=4, byrow=FALSE)
y
x[2,]
x[,2]
x[1,4]
x[2,c(2,4)]
x[3:5, 2]
rnames=c("apple","banana","orange","melon","corn")
cnames=c("cat","dog","bird","pig")
x = matrix(1:20, nrow=5, ncol=4, byrow=TRUE)
rownames(x)=rnames
colnames(x)=cnames

dim1 = c("A1", "A2")
dim2 = c("B1", "B2", "B3")
dim3 = c("C1", "C2", "C3", "C4")
dim4 = c("D1", "D2", "D3")
z = array(1:72, c(2, 3, 4, 3), dimnames=list(dim1, dim2, dim3, dim4))
z
z[1,2,3,]

patientID = c(1, 2, 3, 4)
age = c(25, 34, 28, 52)
diabetes = c("Type1", "Type2", "Type1", "Type1")
status = c("Poor", "Improved", "Excellent", "Poor")
patientdata = data.frame(patientID, age, diabetes, status)
patientdata
swim = read.csv("http://www.macalester.edu/~kaplan/ISM/datasets/swim100m.csv")
patientdata[1:2]
patientdata[1:3]
patientdata[1,1:3]
patientdata[c(1,3),1:3]

mylist = list(patientdata, swim, x)
mylist

par(mfrow=c(2,2))
plot(rnorm(50),pch=17)
plot(rnorm(20),type="l",lty=5)
plot(rnorm(100),cex=0.5)
plot(rnorm(200),lwd=2)

attach(mtcars)
layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE))
hist(wt)
hist(mpg)
hist(disp)
detach(mtcars)

