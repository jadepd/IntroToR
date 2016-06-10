#R for MATLAB users: 
#http://mathesaurus.sourceforge.net/octave-r.html
set.seed(123)
A = matrix(sample(100,15), nrow=5, ncol=3)
set.seed(234)
B = matrix(sample(100,15), nrow=5, ncol=3)
set.seed(321)
X = matrix(sample(100,25), nrow=5, ncol=5)
set.seed(213)
b = matrix(sample(100,5),nrow=5, ncol=1)
A
B
X
b
#  + - * / ^
#Element-wise addition, subtraction, multiplication, division
#, and exponentiation, respectively.
A + 2
A * 2
A ^ 2

#Matrix multiplication
t(A) %*% B 

#Returns a vector containing the column means of A.
colMeans(A)

#Returns a vector containing the column sums of A.
colSums(A)

#Returns a vector containing the row means of A.
rowMeans(A)

#Returns a vector containing the row sums of A.
rowSums(A)


#Matrix Crossproduct
# A'A
crossprod(A)
# A'B
crossprod(A,B)

#Inverse of A where A is a square matrix.
solve(X)

#Solves for vector x in the equation b = Ax.
# b = Xv
v = solve(X, b)
v
#Returns a vector containing the elements of the principal diagonal
diag(X)

#Creates a diagonal matrix with the elements of x in the principal diagonal.
diag(c(1,2,3,4))

#If k is a scalar, this creates a k x k identity matrix.
diag(5)

#Eigenvalues and eigenvectors of A.
eigen(X)
