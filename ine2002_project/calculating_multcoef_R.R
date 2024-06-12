newSample <- read.csv("/Users/yagizefekomit/Desktop/ine2002_project/new_sample_2.csv")
leab <- newSample$Life.expectancy.at.birth
gni <- newSample$Gross.national.income..GNI..per.capita
schooling <- newSample$Mean.years.of.schooling

# Create a data frame with multiple variables
data <- data.frame(
  x1 = gni,
  x2 = schooling,
  y = leab
)

# Fit a linear regression model
model <- lm(y ~ x1 + x2, data = data)

# Extract the multiple R value
multiple_r <- summary(model)$r.squared

# Print the multiple R value
print(multiple_r)

