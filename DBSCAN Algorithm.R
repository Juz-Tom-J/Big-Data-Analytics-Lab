library(dbscan)
data(iris)

x <- iris[,c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width")]

dbscan_res <- dbscan(x,eps=0.5,minPts=5)
plot(x,col=dbscan_res$cluster,pch=20,main="DBSCAN")

cat("Number of clusters: ",length(unique(dbscan_res$cluster[dbscan_res$cluster!=-1])),"\n")
cat("Number of noise points: ",sum(dbscan_res$cluster==-1),"\n")
