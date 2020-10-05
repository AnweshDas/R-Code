#The general mathematical equation for a linear regression is
#y = ax + b
#y is the response variable
#x is the predictor variable
#a and b are constants which are called the coefficients
#Steps to Establish a Regression
#A simple example of regression is predicting weight of a person when his height is known. To do this we need to have the relationship between height and weight of a person.
#The steps to create the relationship is ???

#Carry out the experiment of gathering a sample of observed values of height and corresponding weight.

##Create a relationship model using the lm() functions in R.

##Find the coefficients from the model created and create the mathematical equation using these

##Get a summary of the relationship model to know the average error in prediction. Also called residuals.

##To predict the weight of new persons, use the predict() function in R.

#Input Data
# Values of height
#151, 174, 138, 186, 128, 136, 179, 163, 152, 131

# Values of weight.
#63, 81, 56, 91, 47, 57, 76, 72, 62, 48

#lm() Function
#This function creates the relationship model between the predictor and the response variable.
#Syntax
#The basic syntax for lm() function in linear regression is ???
#lm(formula,data)
# formula is a symbol presenting the relation between x and y.
#data is the vector on which the formula will be applied.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)
print(relation)
print(summary(relation))
#predict() Function
#Syntax
#predict(object, newdata)
#object is the formula which is already created using the lm() function.
#newdata is the vector containing the new value for predictor variable.
# The predictor vector.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# The resposne vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)

# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <-  predict(relation,a)
print(result)
#Visualize the Regression Graphically
# Give the chart file a name.
png(file = "linearregression.png")
# Plot the chart.
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
# Save the file.
dev.off()
