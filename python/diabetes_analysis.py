import pandas as pd

# Load dataset
file_path = 'diabetes.csv'
df = pd.read_csv(file_path)

# Display first rows
print(df.head())

# Average glucose by diabetes outcome
avg_glucose = df.groupby('Outcome')['Glucose'].mean()
print('\nAverage Glucose Levels')
print(avg_glucose)

# Average age by diabetes outcome
avg_age = df.groupby('Outcome')['Age'].mean()
print('\nAverage Age')
print(avg_age)

# BMI analysis
avg_bmi = df.groupby('Outcome')['BMI'].mean()
print('\nAverage BMI')
print(avg_bmi)

# Summary statistics
print('\nSummary Statistics')
print(df.describe())
