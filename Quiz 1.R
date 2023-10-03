quizz <- read.csv("C:/Users/happiness.ajayi/OneDrive - Kentucky State University/Desktop/Class Grades School.csv")
quizz
hist(quizz$Grade, probability = (TRUE))
hist(quizz$Grade, breaks = c(40, 50, 60, 70, 80), labels = TRUE)