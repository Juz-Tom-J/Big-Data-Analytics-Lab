install.packages("caret")

library(MASS)
library(caret)
data(biopsy)

f1 <- as.integer(readline("Enter the value for feature 1: "))
f2 <- as.integer(readline("Enter the value for feature 2: "))
f3 <- as.integer(readline("Enter the value for feature 3: "))

test <- data.frame(V1=f1,V2=f2,V3=f3)

set.seed(123)

biopsy_model <- glm(class~V1+V2+V3,data=biopsy,family="binomial")
pred <- predict(biopsy_model,newdata=test,type="response")

res <- ifelse(pred>0.5,"malignant","benign")
cat("The tumor is",res,"\n")
