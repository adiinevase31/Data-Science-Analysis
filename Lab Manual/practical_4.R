#Calculate the mean, median, mode, and standard deviation of Petal. Width from iris.
library(dplyr)
library(ggplot2)
library(modeest)

data("iris")
mean(iris$Petal.Width)
median(iris$Petal.Width)
mlv(iris$Petal.Width, method = "mfv")
sd(iris$Petal.Width)
range(iris$Petal.Width)
summary(iris$Petal.Width)

#Draw a histogram of mpg from the mtcars dataset.
hist(mtcars$mpg,
     main = "histogram of mpg",
     xlab = "mpg", col = "lightblue", border = "black")

#Create a scatterplot of hp vs mpg from mtcars.
plot(mtcars$hp, mtcars$mpg,
     xlab = "Horsepower (hp)",
     ylab = "Miles per Gallon (mpg)",
     main = "Scatterplot of hp vs mpg",
     pch = 19, col = "blue")

#Generate a boxplot for Ozone in the airquality dataset.
boxplot(airquality$Ozone,
        main="boxplot og airquality",
        xlab = "Species", ylab = "Ozone (ppd)",
        col=c("lightgreen","lightblue","pink"))

#Find the variance of Sepal. Width in the iris dataset.
data(iris)
varience_sepal_width <- var(iris$Sepal.Width)
print(varience_sepal_width)
