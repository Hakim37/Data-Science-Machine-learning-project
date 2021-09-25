

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import sklearn as sc
import sklearn.model_selection

dataset=pd.read_csv("D:\DATA  SCIENCE\MACHINE LEARNING\SUPERVISED LEARNING\MULTIPLE_LINEAR _REGRESSION\project1_multiple_linear_regression\mtcars.csv")


#traing and testing
x=dataset.iloc[:,2:7]
y=dataset.iloc[:,1]
print(x.shape,y.shape)

from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, random_state = 0)


# Fitting Simple Linear Regression to the Training set
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(x_train, y_train)

# Predicting the Test set results
y_pred = regressor.predict(x_test)
print(y_pred)