# Load built-in datasets
data(mtcars)
data(iris)
data(airquality)

#1.Perform a one-sample t-test to check if the mean mpg in mtcars differs from 20.
t_test_mpg <- t.test(mtcars$mpg, mu = 20)
t_test_mpg

#2.Compare Petal.Width across species in iris using ANOVA.
anova_petal <- aov(Petal.Width ~ Species, data = iris)
summary(anova_petal)
# Optional: Post-hoc Tukey test for pairwise species comparison
TukeyHSD(anova_petal)

#3.Find the correlation between mpg and hp in mtcars.
cor_mpg_hp <- cor.test(mtcars$mpg, mtcars$hp)
cor_mpg_hp

#4.Perform a paired t-test on Sepal.Length and Sepal.Width in iris.
t_test_paired <- t.test(iris$Sepal.Length, iris$Sepal.Width, paired = TRUE)
t_test_paired

#5.Check if Ozone and Temp in airquality are significantly correlated.
air_clean <- na.omit(airquality[, c("Ozone", "Temp")])
cor_ozone_temp <- cor.test(air_clean$Ozone, air_clean$Temp)
cor_ozone_temp
