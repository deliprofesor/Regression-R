# Regression-R

Simple Linear Regression 
The code performs simple linear regression analysis on the "airquality" dataset and carries out some related operations. Here is the explanation of what the code does, translated into English:
1)Simple Linear Regression: Analyzes the "Ozone" variable in the dataset with respect to the "Temp" variable using a regression model. Displays the summary of the obtained model.
2)Residual Analysis: Computes the residuals of the model and plots a graph showing the distribution of these residuals.
3)Outlier Detection using Mahalanobis Distance: Calculates the Mahalanobis distance using the "Ozone" and "Temp" variables in the dataset to detect outliers. Identifies the outliers and creates a new dataset excluding these values. Builds a regression model on this new dataset without outliers.
4)Transformations: Performs logarithmic and square root transformations on the new dataset without outliers to create new regression models. Plots graphs to analyze the effect of each transformation.
5)Predictions: Makes predictions for "Ozone" values based on specific "Temp" values using the created models. Utilizes the logarithmic transformation model for predictions. Predicts values for multiple "Temp" values.

Mahalanobis distance is a measure used in statistics and multivariate analysis. It quantifies the uniqueness of a point in a multivariate dataset relative to other points. The Mahalanobis distance takes into account the variance of each variable in the dataset and the correlation between variables.

The formula for Mahalanobis distance is as follows:

Mahalanobis Distance = sqrt((x - μ)^T S^(-1) (x - μ))

Where:
x is the vector representing the point to be evaluated.
μ is the multivariate vector of means of the variables in the dataset.
S is the covariance matrix of the dataset.
Mahalanobis distance calculates the distance of a point to other points considering the distribution and relationship between variables in the dataset. Therefore, using Mahalanobis distance instead of standard Euclidean distance can better reflect the structure of the dataset. Mahalanobis distance is commonly used in outlier detection, clustering analysis, and classification applications.
