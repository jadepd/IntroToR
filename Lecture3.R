x = matrix(1:20, nrow=5, ncol=4, byrow=TRUE)
swim = read.csv("http://www.macalester.edu/~kaplan/ISM/datasets/swim100m.csv")
mylist=list(swim,x)
mylist[[2]][2]
mylist[[2]][1:2]
mylist[[2]][1:2,3]
mylist[[2]][1:2,]

for(i in 1:10){
  print(i)
}
i = 1
while(i <= 10){
  print(i)
  i=i+1
}

i = 1
if(i == 1){
  print("Hello World")
}

i = 2
if(i == 1){
  print("Hello World!")
}else{
  print("Goodbye World!")
}

feelings = c("sad", "afraid")
for (i in feelings){
  print(
    switch(i,
           happy  = "I am glad you are happy",
           afraid = "There is nothing to fear",
           sad    = "Cheer up",
           angry  = "Calm down now"
    )
  )
}

myfunction = function(x,a,b,c){
  return(a*sin(x)^2 - b*x + c)
}
curve(myfunction(x,20,3,4),xlim=c(1,20))

myfeeling = function(x){
  for (i in x){
    print(
      switch(i,
             happy  = "I am glad you are happy",
             afraid = "There is nothing to fear",
             sad    = "Cheer up",
             angry  = "Calm down now"
      )
    )
  }
}
feelings = c("sad", "afraid")
myfeeling(feelings)
