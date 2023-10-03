quiz <- read.csv("C:/Users/happiness.ajayi/Downloads/Class Grades School.csv")
quiz
hist(quiz$School.A, probability = (TRUE))
hist(quiz$School.A, breaks = c(40, 50, 60, 70, 80), labels = TRUE)
hist(quiz$School.B, probability = (TRUE))
hist(quiz$School.B, breaks = c(40, 50, 60, 70, 80), labels = TRUE)
hist(quiz$School.C, probability = (TRUE))
hist(quiz$School.C, breaks = c(40, 50, 60, 70, 80), labels = TRUE)