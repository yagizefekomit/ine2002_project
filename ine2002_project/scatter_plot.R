mySample <- read.csv("/Users/yagizefekomit/Desktop/ine2002_project/sampleWithNecessaryColumnsX.csv")


x <- mySample$GNI
y <- mySample$LEAB
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
#  And Add regression line
plot(x, y, main = "Scatter Plot",
     xlab = "Gross National Income", ylab = "Life expected at birth",
     pch=19, frame = FALSE)
abline(lm(y ~ x, data = mtcars), col = "blue")