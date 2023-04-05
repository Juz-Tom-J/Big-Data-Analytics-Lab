a <- c(1:20)
cat("The input vector: ",a)
pos <- readline(prompt = "Enter the position: ")
pos <- as.integer(pos)

len <- length(a)
i <- pos

cat("The nth elements of vector are: ")
while(i<=len){
  cat(a[i]," ")
  i <- i+pos
}
