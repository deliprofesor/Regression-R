# Regression-R

Simple Linear Regression 
The code performs simple linear regression analysis on the "airquality" dataset and carries out some related operations. Here is the explanation of what the code does, translated into English:
1) Simple Linear Regression: Analyzes the "Ozone" variable in the dataset with respect to the "Temp" variable using a regression model. Displays the summary of the obtained model.
2) Residual Analysis: Computes the residuals of the model and plots a graph showing the distribution of these residuals.
3) Outlier Detection using Mahalanobis Distance: Calculates the Mahalanobis distance using the "Ozone" and "Temp" variables in the dataset to detect outliers. Identifies the outliers and creates a new dataset excluding these values. Builds a regression model on this new dataset without outliers.
4) Transformations: Performs logarithmic and square root transformations on the new dataset without outliers to create new regression models. Plots graphs to analyze the effect of each transformation.
5) Predictions: Makes predictions for "Ozone" values based on specific "Temp" values using the created models. Utilizes the logarithmic transformation model for predictions. Predicts values for multiple "Temp" values.

Mahalanobis distance is a measure used in statistics and multivariate analysis. It quantifies the uniqueness of a point in a multivariate dataset relative to other points. The Mahalanobis distance takes into account the variance of each variable in the dataset and the correlation between variables.

The formula for Mahalanobis distance is as follows:

Mahalanobis Distance = sqrt((x - μ)^T S^(-1) (x - μ))

Where:
x is the vector representing the point to be evaluated.
μ is the multivariate vector of means of the variables in the dataset.
S is the covariance matrix of the dataset.
Mahalanobis distance calculates the distance of a point to other points considering the distribution and relationship between variables in the dataset. Therefore, using Mahalanobis distance instead of standard Euclidean distance can better reflect the structure of the dataset. Mahalanobis distance is commonly used in outlier detection, clustering analysis, and classification applications.

# Regression Metric 

1) Model Creation: Using the lm function, it creates a linear regression model assuming that the Ozone variable in the dataset is dependent on the temperature (Temp) variable. If there are missing observations in the dataset, they are ignored using na.omit.
2) Error Measurement (Mean Squared Error, MSE): It calculates the mean squared error (MSE) by summing the squares of the model's residuals and dividing by the number of observations, providing a measure of how well the model fits the data.
3) Log-Likelihood Computation: The log-likelihood of the model is calculated, which measures the model's ability to explain the data and assesses its goodness of fit.
4) Akaike Information Criterion (AIC): It computes the AIC value, which is an information criterion that balances the complexity and goodness of fit of the model. Lower AIC values indicate a better model fit.
5) Bayesian Information Criterion (BIC): The BIC value is calculated, which is another information criterion balancing model complexity and goodness of fit. Similar to AIC, lower BIC values suggest a better model fit.
6) Outlier Removal: Outliers in the dataset are identified using the Mahalanobis distance measure, and these outliers are removed from the dataset.
7) Creation of Model with Outliers Removed: After removing outliers, a new linear regression model is created using this cleaned dataset.
8) Calculation of AIC and BIC for Model with Outliers Removed: AIC and BIC values are recalculated for the new model without outliers. These values help assess the impact of outliers on the model.
