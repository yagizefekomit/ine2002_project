newSample <- read.csv("/Users/yagizefekomit/Desktop/ine2002_project/new_sample_2.csv")
leab <- newSample$Life.expectancy.at.birth
gni <- newSample$Gross.national.income..GNI..per.capita
schooling <- newSample$Mean.years.of.schooling

# Assuming you have a numeric vector called "data" and a hypothesized mean value
result <- t.test(leab, mu=75, alternative = "less")
