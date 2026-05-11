library(readr)
library(dplyr)

# Load dataset
file_path <- 'D:\\Hello World\\diabetes\\diabetes.csv'
df <- read_csv(file_path)

# View first rows
head(df)

# Average glucose by outcome
avg_glucose <- df %>%
  group_by(Outcome) %>%
  summarise(mean_glucose = mean(Glucose, na.rm = TRUE))

print(avg_glucose)

# Average age by outcome
avg_age <- df %>%
  group_by(Outcome) %>%
  summarise(mean_age = mean(Age, na.rm = TRUE))

print(avg_age)

# Average BMI
avg_bmi <- df %>%
  group_by(Outcome) %>%
  summarise(mean_bmi = mean(BMI, na.rm = TRUE))

print(avg_bmi)

