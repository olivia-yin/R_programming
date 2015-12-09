
# 1 R was developed by statisticians working at The University of Auckland

# 2 The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition?
# The freedom to restrict access to the source code for the software.

# 3 In R the following are all atomic data types EXCEPT table

# 4 If I execute the expression x <- 4L in R, what is the class of the object `x' as determined by the `class()' function?
x <- 4L 
class(x)
# 5 What is the class of the object defined by x <- c(4, TRUE)?
x <- c(4, TRUE)
class(x)

# 6 If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression rbind(x, y)?
x <- c(1,3, 5) 
y <- c(3, 2, 10)
rbind(x,y)

# 7 A key property of vectors in R is that elements of a vector all must be of the same class

# 8 Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[2]] give me?
x <- list(2, "a", "b", TRUE)
x[[2]]

# 9 Suppose I have a vector x <- 1:4 and y <- 2:3. What is produced by the expression x + y?
x <- 1:4
y <- 2:3
x + y

# 10 Suppose I have a vector x <- c(3, 5, 1, 10, 12, 6) and I want to set all elements of this vector that are less than 6 to be equal to zero. What R code achieves this?
x <- c(3, 5, 1, 10, 12, 6)
x[x<6] <- 0
x[x<=5] <- 0

# Q11-20
getwd()
setwd("/Users/yy/Desktop/2015- Data Analysis/r/coursera")
file <- "/Users/yy/Desktop/2015- Data Analysis/r/coursera/hw1_data.csv"
df <- read.csv(file, header = TRUE)
# In the dataset provided for this Quiz, what are the column names of the dataset?
colnames(df)

# Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
df[c(1:2),]



# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
df[c(152,153),]

# How many observations (i.e. rows) are in this data frame?
nrow(df)

# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
df[c(47),]

# What is the value of Ozone in the 47th row?
df$Ozone[47]

# How many missing values are in the Ozone column of this data frame?
missing <- is.na(df$Ozone)
as.numeric(missing)
sum(missing)

# What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
ozone <- na.omit(df$Ozone) 
mean(as.numeric(ozone))

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
df2 <- subset(df, df$Ozone > 31 )
df3 <- subset(df2,df2$Temp > 90)
solar <- na.omit(df3$Solar.R)
mean(as.numeric(solar))

# What is the mean of "Temp" when "Month" is equal to 6?
df5 <- subset(df,df$Month == 6)
temp <- na.omit(df5$Temp)
mean(as.numeric(temp))

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
df6 <- subset(df, df$Month == 5)
max(df6$Ozone, na.rm = TRUE)
