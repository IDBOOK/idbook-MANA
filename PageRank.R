#1). 未考虑阻尼系统的情况
#构建邻接矩阵
adjacencyMatrix<-function(pages){
  n<-max(apply(pages,2,max))
  A <- matrix(0,n,n)
  for(i in 1:nrow(pages)) A[pages[i,]$dist,pages[i,]$src]<-1
  A
}

#变换概率矩阵
probabilityMatrix<-function(G){
  cs <- colSums(G)
  cs[cs==0] <- 1
  n <- nrow(G)
  A <- matrix(0,nrow(G),ncol(G))
  for (i in 1:n) A[i,] <- A[i,] + G[i,]/cs
  A
}

#递归计算矩阵特征值
eigenMatrix<-function(G,iter=100){
  iter<-10
  n<-nrow(G)
  x <- rep(1,n)
  for (i in 1:iter) x <- G %*% x
  x/sum(x)
}

pages<-read.table(file="C:\\Users\\dev\\Desktop\\page.csv",header=FALSE,sep=",")
names(pages)<-c("src","dist");pages

A<-adjacencyMatrix(pages);A
G<-probabilityMatrix(A);G
q<-eigenMatrix(G,100);q

#  2). 包括考虑阻尼系统的情况
#增加函数：dProbabilityMatrix
#变换概率矩阵,考虑d的情况
dProbabilityMatrix<-function(G,d=0.85){
  cs <- colSums(G)
  cs[cs==0] <- 1
  n <- nrow(G)
  delta <- (1-d)/n
  A <- matrix(delta,nrow(G),ncol(G))
  for (i in 1:n) A[i,] <- A[i,] + d*G[i,]/cs
  A
}

A<-adjacencyMatrix(pages);A
G<-dProbabilityMatrix(A);G
q<-eigenMatrix(G,100);q

