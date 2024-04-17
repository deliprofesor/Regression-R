library(MASS)  # Load the library to use the Mahalanobis function

# Create the model
model <- lm(Ozone ~ Temp, data = airquality, na.action = na.omit)

# Calculate Mean Squared Error
mse <- sum(model$residuals^2) / length(model$residuals)
mse # 552.6715

# Calculate AIC and BIC
loglik <- logLik(model)
loglik <- as.numeric(loglik) # loglik -530.8532
k <- 2  # Number of parameters in the model (Bo and Temp coefficients)
N_par <- length(model$residuals) # 116

AIC_val <- -2 * loglik + k * N_par
AIC_val # 1293.706

BIC_val <- -2 * loglik + k * log(N_par)
BIC_val # 1071.214

# Remove outliers
air <- airquality[c("Ozone", "Temp")]
air <- na.omit(air)
dist <- mahalanobis(air, center = colMeans(air), cov = cov(air))
cutoff <- qchisq(p = 0.95, df = 2)
ids <- which(dist <= cutoff)
air <- air[ids, ]

# Create the model without outliers
modelRemovedOut <- lm(Ozone ~ Temp, data = air)

# Recalculate AIC and BIC
AIC_removed <- AIC(modelRemovedOut)
BIC_removed <- BIC(modelRemovedOut)

AIC_removed # 967.7998
BIC_removed  # 975.9553
