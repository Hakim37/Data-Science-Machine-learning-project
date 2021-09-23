# -*- coding: utf-8 -*-
"""
Created on Mon Mar 11 11:07:28 2019

@author: dell
"""
#import the libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

#Read the data set
data=pd.read_csv("D:\DATA  SCIENCE\MACHINE LEARNING\SUPERVISED LEARNING\SIMPLE LINEAR REGRATION-MODEL\Project1-simple linear regression\salary.csv")

#divide  the dataset in to x and y
X=data.iloc[:,:-1].values
y=data.iloc[:,1].values

#splitingb the  data the data based on trending and test set
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 1/3, random_state = 0)

#implemente our classifier based on simple linear regression
from sklearn.linear_model import LinearRegression
simplelinearRegression=LinearRegression()
simplelinearRegression.fit(X_train,y_train)

y_predict=simplelinearRegression.predict(X_test)


#implement the graph
plt.scatter(X_train, y_train, color = 'red')
plt.plot(X_train, simplelinearRegression.predict(X_train))
plt.show()

# Visualising the Test set results
plt.scatter(X_test, y_test, color = 'red')
plt.plot(X_train, simplelinearRegression.predict(X_train), color = 'blue')
plt.title('Salary vs Experience (Test set)')
plt.xlabel('Years of Experience')
plt.ylabel('Salary')
plt.show()