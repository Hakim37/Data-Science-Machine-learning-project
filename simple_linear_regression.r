#SIMPLE LINEAR REGRESSION

#IMPORTING THE DATASET
dataset=read.csv("D:\\DATA  SCIENCE\\MACHINE LEARNING\\SUPERVISED LEARNING\\SIMPLE LINEAR REGRATION-MODEL\\Project1-simple linear regression\\Salary_Data.csv")
print(dataset)
fix<-(dataset)
fit<-lm(dataset$Salary~dataset$YearsExperience,data=dataset)
summary(fit)

#splitting the dataset into the training set and test set
install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Salary, SplitRatio = 2/3)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)

#FEATURE SCALING
#training_set=scale(training_set)
#test_set=scale(test_set)

#FITTING SIMPLE LINEAR REGRESSION TO THE TRAINING SET
regressor= lm(formula=Salary ~YearsExperience, data=training_set)
summary(regressor)

#predicting the test set results
y_pred=predict(regressor,dataset = test_set)
print(y_pred)
head(x)
#visualising the training set results
install.packages('ggplot2')
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$YearsExperience, y = training_set$Salary),
             colour = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary')

# Visualising the Test set 
library(ggplot2)
ggplot() +
  geom_point(aes(x = test_set$YearsExperience, y = test_set$Salary),
             colour = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Test set)') +
  xlab('Years of experience') +
  ylab('Salary')

  