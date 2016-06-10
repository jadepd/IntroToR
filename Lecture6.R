# FACTOR
factor = factor(rep(c(1:3),times=5))
factor
X = sample(100,15)
?tapply
tapply(X,factor,mean)
rbind(X,factor)
boo = rbind(X,factor)[2,]==1
which(boo)
rbind(X,factor)[1,which(boo)]
sum(rbind(X,factor)[1,which(boo)])/length(which(boo))
