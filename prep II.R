installed.packages("ggplot2")
library("ggplot2")
student <- read.csv("C:/Users/happiness.ajayi/OneDrive - Kentucky State University/Desktop/ENV 506/student.csv")
student
student[1:4, 1:2]
student[1:10, 1:3]
summary(student)
summary(student[,2])
summary(student[,1])
hist(student$Grade, xlab='Grade', ylab='Frequency', main = 'Distribution of Student Grades')
abline(v = mean(student$Grade), col = 'red', lwd = 7)
hist(student$Grade, probability = (TRUE))
hist(student$Grade, breaks = c(40, 50, 60, 70, 80, 90, 100), labels = TRUE)
pie(table(student$HairColor),  main = "HairColor Distribution")
# Imputing percentage into the pie chat
Percent = c("33", "17", "28", "22")
HColor = c("Blonde", "Red", "Brown", "Black")
pie(table(student$HairColor), labels = paste(HColor, Percent, "%"), main = "Hair Color Distribution")
barplot(table(student$HairColor), legend = TRUE, xlab = "Hair Color", ylab = "frequency", main = "Frequency Distrib of hair Color")
barplot(table(student$HairColor)/length(student$HairColor), legend = TRUE, xlab = "Hair Color", ylab = "Frequency", main = "Relative Freq Distribution")
barplot(table(student$Gender, student$HairColor), beside = TRUE, legend = TRUE)
ggplot(student, aes(Gender, Grade)) + geom_bar(stat="identity", position = "dodge")
table(student$Gender, student$HairColor)
# name this table ConTab1 and add row and col sums to its margins
ConTab1  = table(student$Gender, student$HairColor)
addmargins(ConTab1)
#To get the proportions in the contingency
proportions(ConTab1)
quantile(student$Grade)
boxplot(student$Grade, ylab = "Grades", main = "Grade Distribution")
boxplot(Grade~Gender, data = student, main = "Grades by Gender")
# Calculating CoVariance between two variables 
cov(student$Grade, student$StudyHrs)
# Correlation between two variables
cor(student$Grade, student$StudyHrs)