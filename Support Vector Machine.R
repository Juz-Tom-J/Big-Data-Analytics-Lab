install.packages("caret")
install.packages("e1071")

library(caret)
library(e1071)
data(iris)

set.seed(123)
train_index <- sample(1:nrow(iris),round(0.7*nrow(iris)))
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

train_data[-5] <- scale(train_data[-5])
test_data[-5] <- scale(test_data[-5])

svm_model <- svm(Species~.,data = train_data,kernel = "linear",cost=1)

pred <- predict(svm_model,test_data)

cm <- (confusionMatrix(pred,test_data$Species))$table
print(cm)

acc <- sum(diag(cm))/sum(cm)
cat("\n Accuracy: ",acc*100,"%\n")
