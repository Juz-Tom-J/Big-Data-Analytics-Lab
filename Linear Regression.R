x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

LinRegMod <- lm(y~x)

h = as.integer(readline("Enter the height of the individual: "))
h = data.frame(x = h)
pred = predict(LinRegMod,h)

cat("The predicted weight is ",pred)
plot(x,y,col = "blue",main = "Linear Regression",
     abline(LinRegMod),cex = 1.3,pch = 16,xlab = "Weight in kg",ylab = "Height in cm")
