install.packages("cluster")
install.packages("ggplot2")

library(cluster)
library(ggplot2)

data(iris)

sub <- subset(iris, select = -c(Species))

k_means_model <- kmeans(sub, centers = 3)

print(autoplot(k_means_model, sub, frame = TRUE))
