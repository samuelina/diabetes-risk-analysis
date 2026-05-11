import pandas as pd
import matplotlib.pyplot as plt

# Load data
file_path = 'diabetes.csv'
df = pd.read_csv(file_path)

# Histogram of glucose levels
plt.hist(df['Glucose'])
plt.xlabel('Glucose Level')
plt.ylabel('Frequency')
plt.title('Distribution of Glucose Levels')
plt.savefig('outputs/glucose_histogram.png')
plt.close()

# Boxplot by diabetes outcome
plt.boxplot([
    df[df['Outcome'] == 0]['Age'],
    df[df['Outcome'] == 1]['Age']
])

plt.xticks([1, 2], ['Non-Diabetic', 'Diabetic'])
plt.ylabel('Age')
plt.title('Age Distribution by Diabetes Outcome')
plt.savefig('outputs/age_boxplot.png')
