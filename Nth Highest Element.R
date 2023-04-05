a <- sample.int(10)
n <- readline(prompt = "Enter the value of n for which you want to print the highest element: ")
n <- as.integer(n)
len <- length(a)

for(i in 1:(len-1)){
  for(j in 1:(len-1)){
    if(a[j]>a[j+1]){
      temp = a[j]
      a[j] = a[j+1]
      a[j+1] = temp
    }
  }
}

cat("The sorted array is: ",a,"\n")
cat("The value of n: ",n,"\n")
cat("The nth highest element of array: ",a[len-n+1],"\n")
