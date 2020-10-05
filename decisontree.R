#library(pacman)
#pacman::p_load(pacman,party,randomForest,survival)
#any(grepl ("randomForest", installed.packages()))
library(party)
#Syntax
#ctree(formula, data)
#Following is the description of the parameters used ???

#formula is a formula describing the predictor and response variables.
#data is the name of the data set used.
#Input Data
#We will use the R in-built data set named readingSkills to create a decision tree. It describes the score of someone's readingSkills if we know the variables "age","shoesize","score" and whether the person is a native speaker or not.

#Here is the sample data.
print(head(readingSkills))
# Load the party package. It will automatically load other
# dependent packages.
library(party)

# Create the input data frame.
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name.
png(file = "decision_tree.png")

# Create the tree.
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score, 
  data = input.dat)

# Plot the tree.
plot(output.tree)

# Save the file.
dev.off()
#From the decision tree shown above we can conclude that anyone whose readingSkills score is less than 38.3 and age is more than 6 is not a native Speaker.
