d <- readline(prompt = "Enter the depth of the Pascal's Triangle: ")
d <- as.integer(d)

for(i in 1:d){
  for(j in 1:(d-i+1)){
    cat(" ")
    }
  no <- 1
  for(j in 1:i){
    if(no!=0){
      cat(no," ")
}
  no <- no*(i-j)/j}
 cat("\n")
}
