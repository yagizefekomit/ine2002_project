import pandas as pd

# Read the CSV file
data = pd.read_csv('new_sample.csv')

# Specify the columns to delete
columns_to_delete = ["HDI rank", "HUMAN DEVELOPMENT","Mean years of schooling", "Human Development Index (HDI) ", "Expected years of schooling", "GNI per capita rank minus HDI rank", "HDI rank.1", "Unnamed: 10","Unnamed: 11"]  # Replace with the actual column names you want to delete

# Delete the specified columns
data = data.drop(columns=columns_to_delete)

# Create a new sample with 30 observations


# Save the new sample as a CSV file
data.to_csv('sampleWithNecessaryColumns.csv', index=False)
