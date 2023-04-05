num = readline("Enter a number: ")
print(num)

if (num>0){
  fact = 1
  for (i in 1:num){
    fact = fact*i
  }

print(paste0(num,"! = ",fact))

fact_c = fact
rev = 0
rem = 0

while(fact>0){
  rem = fact%%10
  rev = rev*10+rem
  fact = as.integer(fact/10)
}

if(fact_c == rev){
  print("The obtained factorial is a palindrome")
  } else {
  print("The obtained factorial is not a palindrome")
} 
} else if (num<0){
  print("No factorial for negative numbers")
} 
