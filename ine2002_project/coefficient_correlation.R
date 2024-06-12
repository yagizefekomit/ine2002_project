mySample <- read.csv("/Users/yagizefekomit/Desktop/ine2002_project/sampleWithNecessaryColumnsX.csv")

# Calculating the sample correlation coefficient

r <- 0.7536
n <- 33
t = r*sqrt((n-2)/(1-r**2))
cv <- qt(0.95,33)