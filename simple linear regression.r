### Simple Linear Regression- Basit Dogrusal Regresyon ###
library(ggplot2)
View(airquality)

model <- lm(Ozone ~ Temp , data = airquality)
model

# y = -146.995 + 2.429Temp 

summary(model)

# Ho : parameter has no significant effect
# ha : has a significant effect

## Residuals

residuals <- as.numeric(model$residuals)
plot(residuals)
# Plot residuals plot(residuals(model))
plot(model)


## Outlier Detection using Mahalanobis Distance -Mahalonobis Distance Aykiri Deger Kontrolu ##

plot(airquality$Ozone , airquality$Temp)
summary(model)
air <- na.omit(airquality[c("Ozone" , "Temp")])
View(air)
air_center = colMeans(air)
air_center

air_cov = cov(air)
air_cov

distance <- mahalanobis(air , center = air_center , cov = air_cov)
distance

cutoff <- qchisq(p = 0.95 , df = 2)
cutoff

index <- which(distance > cutoff)
air[index,]

air_new <- air[-index , ]

model2 <- lm(Ozone ~ Temp , data  = air_new)
model2
model

summary(model2)
plot(model2)

### Transformations - Donusumler ####

par(mfrow=c(2,2))
plot(model2)


model_log <- lm(Ozone ~ log(Temp) , data = air_new)
summary(model_log)

plot(model_log)
dev.off()


model_sqrt <- lm(Ozone ~ sqrt(Temp) , data = air_new)
summary(model_sqrt)

plot(model_log)


model_sqrt <- lm(sqrt(Ozone) ~ sqrt(Temp) , data = air_new)
summary(model_sqrt)
plot(model_sqrt)

### Predictions on the Model -  Modele IliSkin Tahminler ###

model_log <- lm(log(Ozone) ~ Temp , data = airquality)
summary(model_log)
predict(model2 , data.frame(Temp = c(74)))

# Using the Log model - Log model Uzerinden
predicted_log <- predict(model_log , data.frame(Temp = c(74)))
exp(predicted_log)

# Using the Log model for independent variable -Log model bagimsiz degisken
model_log_independent <- lm(Ozone ~ log(Temp) , data = airquality)
predict(model_log_independent , data.frame(Temp = c(74)))

## Predict with multiple values
predict(model_log_independent , data.frame(Temp = c(74 , 56,45,78)))
