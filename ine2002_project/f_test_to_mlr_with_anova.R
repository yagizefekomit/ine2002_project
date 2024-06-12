newSample <- read.csv("/Users/yagizefekomit/Desktop/ine2002_project/new_sample_2.csv")
leab <- newSample$Life.expectancy.at.birth
gni <- newSample$Gross.national.income..GNI..per.capita
schooling <- newSample$Mean.years.of.schooling

# Create a data frame with multiple variables
data <- data.frame(x1 = gni,x2 = schooling,y = leab)

# Fit the full model with all predictor variables
full_model <- lm(y ~ x1 + x2, data = data)

# Fit the reduced model without predictor variables
reduced_model <- lm(y ~ 1, data = data)

# Apply F-test to compare models
f_test <- anova(reduced_model, full_model)

# Extract the p-value from the F-test result
p_value <- f_test$Pr[2]

# Print the p-value
print(p_value)
