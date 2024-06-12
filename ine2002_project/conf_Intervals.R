mySample <- read.csv("/Users/yagizefekomit/Desktop/ine2002_project/sampleWithNecessaryColumnsX.csv")
leab <- mySample$LEAB #life expectancy at birth

# calculating point estimations and confidence intervals, for a 95% confidence interval
n <- length(leab) # number of elements
xbar <- mean(leab) # mean
s <- sd(leab) # sample standard deviation

margin <- qt(0.975, df= n-1)*s / sqrt(n) # 3.082897

low <- xbar-margin # lower = 67.57996

high <- xbar+margin # upper = 73.74575