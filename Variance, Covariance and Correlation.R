data(iris)

feature1 <- iris$Petal.Length
feature2 <- iris$Sepal.Width

var <- round(var(feature1),4)
cat("Variance: ",var,"\n")

cov <- round(cov(feature1,feature2),4)
cat("Covariance: ",cov,"\n")

corr <- round(cor(feature1,feature2),4)
cat("Correlation: ",corr,"\n")
