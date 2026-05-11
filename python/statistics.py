import pandas as pd

file_path = 'diabetes.csv'
df = pd.read_csv(file_path)

# Correlation matrix
correlation = df.corr(numeric_only=True)
print(correlation)

# Identify strongest correlations with Outcome
print('\nCorrelations with Diabetes Outcome')
print(correlation['Outcome'].sort_values(ascending=False))
