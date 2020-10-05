#The Logistic Regression is a regression model in which the response variable (dependent variable) has categorical values such as True/False or 0/1.
#It actually measures the probability of a binary response as the value of response variable based on the mathematical equation relating it with the predictor variables.
#The general  mathematic equation can be represented by
#y = 1/(1+e^-(a+b1x1+b2x2+b3x3+...))
#y is the response variable.
#x is the predictor variable.
#a and b are the coefficients which are numeric constants.
#Syntax
#The function used to create the regression model is the glm() function.
#glm(formula,data,family)
#formula is the symbol presenting the relationship between the variables.
#data is the data set giving the values of these variables.
#family is R object to specify the details of the model. It's value is binomial for logistic regression.
#Example
# Select some columns form mtcars.
input <- mtcars[,c("am","cyl","hp","wt")]
print(head(input))
am.data <- glm(formula = am~cyl+hp+wt,data =input,family =binomial)
print(summary(am.data))