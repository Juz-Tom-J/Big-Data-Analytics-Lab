install.packages("cluster")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggfortify")

library(cluster)
library(dplyr)
library(ggplot2)
library(ggfortify)

data(iris)

sub <- subset(iris, select = -c(Species))

k <- 3
k_means_model <- kmeans(sub, centers = k)

graph <- autoplot(k_means_model, sub, frame = TRUE)
print(graph)
