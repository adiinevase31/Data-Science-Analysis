# Load datasets
data(iris)
data(mtcars)
data(airquality)

#1.Build a regression model predicting Petal.Length from Sepal.Length in iris.
model1 <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model1)

#2.Create a multiple regression model predicting mpg using wt, hp, and drat in mtcars.
model2 <- lm(mpg ~ wt + hp + drat, data = mtcars)
summary(model2)

#3.Check the R2 and Adjusted R2 of the model in Q2.
r2 <- summary(model2)$r.squared
adj_r2 <- summary(model2)$adj.r.squared
cat("R-squared:", round(r2, 3), "\n")
cat("Adjusted R-squared:", round(adj_r2, 3), "\n")

#4.Plot residuals of your regression model in Q1 and interpret the result.
par(mfrow = c(2, 2))  # Multiple plots in one view
plot(model1)
# Return to single plot layout
par(mfrow = c(1, 1))

#5.Build a regression model predicting Ozone using Temp from the airquality dataset.
air_clean <- na.omit(airquality)
model3 <- lm(Ozone ~ Temp, data = air_clean)
summary(model3)
