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

# Fit the full model with all predictor variables
full_model <- lm(y ~ x1 + x2, data = data)

# Extract the F-statistic and its associated p-value
f_statistic <- summary(full_model)$fstatistic
f_value <- f_statistic[1]
p_value <- pf(f_value, df1 = length(coef(full_model)) - 1, df2 = length(data$y) - length(coef(full_model)), lower.tail = FALSE)

# Print the p-value
print(p_value)
