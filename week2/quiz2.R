# Using iris dataset. What is the mean of 'Sepal.Length' for the species virginica? 
library(datasets)
data(iris)
cat(mean(iris[iris$Species == "virginica",]$Sepal.Length))

# what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean)

# How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
library(datasets)
data(mtcars)
tapply(mtcars$mpg, mtcars$cyl, mean)

# what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
abs(diff(tapply(mtcars$hp, mtcars$cyl, mean)[c('8','4')]))

