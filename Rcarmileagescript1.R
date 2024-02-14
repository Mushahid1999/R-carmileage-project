# Link to original data set: https://www.kaggle.com/datasets/uciml/autompg-dataset
attach(carmileage)
cardata=carmileage
# returns the dimensions of the cardata dataframe
dim(cardata)
# computes histogram of miles per gallon (mpg) values
hist(mpg)
# computes boxplot of miles per gallon (mpg) values
boxplot(mpg)
# Returns relevant metrics of each variable such as min, max, quartiles, and data type
summary(cardata)
# Returns a matrix of scatter plots between the pair mpg and cylinders
pairs(cardata[,1:2])
# Converts incompatible data types into compatible ones by converting horsepower values into numerica values
cardata[,4] = as.numeric(factor(cardata[,4]))
# Returns a matrix of scatter plots between the variables mpg, cylinders, displacement, horsepower, weight, acceleration
pairs(cardata[,1:6])

# analyzes correlation coefficient between mpg and cylinders and gets the significance level of the correlation
cor.test(mpg, cylinders)
# analyzes correlation coefficient between mpg and displacement and gets the significance level of the correlation
cor.test(mpg, displacement)
# analyzes correlation coefficient between mpg and weight and gets the significance level of the correlation
cor.test(mpg, weight)
# analyzes correlation coefficient between mpg and acceleration and gets the significance level of the correlation
cor.test(mpg, acceleration)
# analyzes correlation coefficient between mpg and horsepower and gets the significance level of the correlation
cor.test(mpg, horsepower)

# returns scatter plot of mpg vs. cylinders
plot(cardata$mpg, cardata$cylinders)
# returns scatter plot of mpg vs. displacement
plot(cardata$mpg, cardata$displacement)
# returns scatter plot of mpg vs. weight
plot(cardata$mpg, cardata$weight)
# returns scatter plot of mpg vs. acceleration
plot(cardata$mpg, cardata$acceleration)
# returns scatter plot of mpg vs. horsepower
plot(cardata$mpg, cardata$horsepower)

# creates a linear regression model mpg is the outcome variable while cylinders, displacement, weight, acceleration are the predictor variables.
car.lm=lm(mpg~cylinders +displacement + weight + acceleration, data=cardata)
summary(car.lm)
