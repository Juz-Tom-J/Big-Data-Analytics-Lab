library(cluster)

df <- data.frame(x = c(1,1,2,3,4,5,6),
                 y = c(5,4,5,4,5,4,5))

df_scaled <- scale(df)
dist_matrix <- dist(df_scaled)

hc_agg <- hclust(dist_matrix,method="complete")
plot(hc_agg,main = "Agglomerative Clustering")

hc_div <- diana(df_scaled)
plot(hc_div,main = "Divisive Clustering")