quadraticRoots <- function(a,b,c){
  print(paste0("The quadratic equation is: ",a,"x^2 + ",b,"x + ",c," = 0"))
  
  discriminant <- (b^2) - (4*a*c)
  
  if(discriminant>0){
    root1 <- (-b + sqrt(discriminant))/(2*a)
    root2 <- (-b - sqrt(discriminant))/(2*a)
    return(paste0("There are 2 real roots for this quadratic equation, they are ",root1,"
                  and ",root2))
  }
  
  else if(discriminant==0){
    root <- (-b)/(2*a)
    return(paste0("There is only 1 real root for this quadratic equation, it is ",root))
  }
  
  else{
    return(paste0("This quadratic equation has no real roots"))
  }
}

a <- as.integer(readline("Enter the value for a: "))
b <- as.integer(readline("Enter the value for b: "))
c <- as.integer(readline("Enter the value for c: "))

result <- (quadraticRoots(a,b,c))
print(result)
