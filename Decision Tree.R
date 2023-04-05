library(rpart)
library(rpart.plot)
library(caret)
data(iris)

set.seed(123)

train_index <- sample(1:nrow(iris),round(nrow(iris)*0.7),replace = FALSE)
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

tree_model <- rpart(Species~.,data=train_data,method="class")
rpart.plot(tree_model)

pred <- predict(tree_model,test_data,type = "class")
cm <- (confusionMatrix(pred,test_data$Species))$table

actual <- test_data$Species
acc <- mean(pred == actual)
cat("The accuracy is: ",acc*100,"%\n")
