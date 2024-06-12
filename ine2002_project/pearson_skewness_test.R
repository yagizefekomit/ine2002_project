newSample <- read.csv("/Users/yagizefekomit/Desktop/ine2002_project/new_sample_2.csv")
leab <- newSample$Life.expectancy.at.birth
gni <- newSample$Gross.national.income..GNI..per.capita
schooling <- newSample$Mean.years.of.schooling

# Define a custom function to calculate Pearson's Coefficient of Skewness
pearson_skewness <- function(x) {
  mean_val <- mean(x)
  median_val <- median(x)
  sd_val <- sd(x)
  
  skewness <- 3 * (mean_val - median_val) / sd_val
  return(skewness)
}

# Example usage with a numeric vector named 'data'
data <- leab
skewness_value <- pearson_skewness(data)
print(skewness_value)
