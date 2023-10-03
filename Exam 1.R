# Entering my Dataset into R
Exam = data.frame(
  Stkden = c(2000, 2300, 4100, 3400, 5000, 3600, 2000, 4500, 4000, 1500, 2200, 6000),
  Feedrate = c(6160, 7406, 10660, 11424, 13300, 10584, 6000, 9000, 8200, 3750, 6000, 15000), 
  Yield = c(2250, 2933, 4305, 3825, 4500, 4266, 2300, 5062, 4800, 3200, 4300, 10000),
  State = c("KY", "MO", "MS", "KY", "MS", "MS", "MO", "KY", "KY", "MO", "MO", "MS"))
#Reading my Dataset named 'Exam'
Exam
#Describing the Stock Density Distribution
hist(Exam$Stkden, xlab='Stkden', ylab='Frequency', main = 'Distribution of Stock Density')
#Describing the Yield Distribution
hist(Exam$Yield, xlab='Yield', ylab='Frequency', main = 'Distribution of Yield')
#This command adds a vertical red line for the mean of Yield Distribution
abline(v = mean(Exam$Yield), col = 'red', lwd = 7)
# Drawing a discrete probability distribution of Yield
hist(Exam$Yield, probability= TRUE)
#State Distribution using pie chart
pie(table(Exam$State),  main = "State Distribution")
# Imputing percentage into the pie chat
Percent = c("33.3", "33.3", "33.3")
State = c("KY", "MS", "MO")
pie(table(Exam$State), labels = paste(State, Percent, "%"), main = "State Distribution")
# Using Barplot to describe the State Distribution
barplot(table(Exam$State), legend = TRUE, xlab = "State Distribution", ylab = "Frequency", main = "Frequency Distrib of State")
# Using Barplot to describe the State Relative Distribution
barplot(table(Exam$State)/length(Exam$State), legend = TRUE, xlab = "State", ylab = "Frequency", main = "Relative Freq Distribution")
#Installing ggplot2 to plot the Yield against the State Distribution
install.packages("ggplot2")
library(ggplot2)
#Barplot of Yield against State distribution
ggplot(Exam, aes(State, Yield)) + geom_bar(stat="identity", position = "dodge")
# Dataset to use to plot my scatterplot
Stkden <- c(2000, 2300, 4100, 3400, 5000, 3600, 2000, 4500, 4000, 1500, 2200, 6000)
Yield <- c(2250, 2933, 4305, 3825, 4500, 4266, 2300, 5062, 4800, 3200, 4300, 10000)
# Create Scatterplot
plot(Stkden, Yield, 
     main="Scatterplot of Stocking Density (StkDen) vs. Yield",
     xlab="Stocking Density (StkDen)",
     ylab="Yield",
     pch=19,  # Point shape
     col="blue"  # Point color
)
#Using summary function to find the descriptive statistics of Stkden
summary(Exam [,"Stkden"])
#Using summary function to find the descriptive statistics of Feedrate
summary(Exam [,"Feedrate"])
#Using summary function to find the descriptive statistics of Yield
summary(Exam [,"Yield"])

