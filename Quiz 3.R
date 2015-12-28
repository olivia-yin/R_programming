# week 3 quiz
# Q1 
library(datasets)
data(iris)
?iris
head(iris)

virg <- subset(iris, Species == "virginica", select = c(Sepal.Length, Species))
mean(iris[iris$Species == "virginica","Sepal.Length"])
# Q2 Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?

rowMeans(iris[, 1:4])
apply(iris[, 1:4], 1, mean)# 1 indicates rows, 2 indicates columns
apply(iris[, 1:4], 2, mean)
apply(iris, 2, mean)

# Q3 How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
library(datasets)
data(mtcars)
?mtcars
head(mtcars)
split(mtcars, mtcars$cyl)# split data by cyl levels
with(mtcars, tapply(mpg, cyl, mean))
tapply(mtcars$mpg,mtcars$cyl, mean)


# Q4 what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
a <- with(mtcars, tapply(hp,cyl,mean))
b <- as.vector(a)
b[1]
abs(b[1]-b[3])

# Q5 If you run
# debug(ls)
# what happens when you next call the 'ls' function?
debug(ls)
ls()
