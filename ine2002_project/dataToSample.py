import pandas as pd
# Upload the data file
data = pd.read_csv('/Users/yagizefekomit/Desktop/ine2002_project/humanindex.csv')

# Take a sample from the data, the size of the sample is n=35
sample_data = data.sample(n=35)

# Save the sample data to a new CSV file
sample_data.to_csv('new_sample.csv', index=False)  # new_sample.csv is our sample.