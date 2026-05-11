library(readr)
library(ggplot2)

# Load dataset
file_path <- 'D:\\Hello World\\diabetes\\diabetes.csv'
df <- read_csv(file_path)

# Histogram
p1 <- ggplot(df, aes(x = Glucose)) +
  geom_histogram(bins = 20) +
  ggtitle('Distribution of Glucose Levels')

print(p1)
ggsave("D:\\Hello World\\diabetes\\outputs\\histogramR.png")

# Boxplot
p2 <- ggplot(df, aes(x = factor(Outcome), y = Age)) +
  geom_boxplot() +
  xlab('Outcome') +
  ylab('Age') +
  ggtitle('Age Distribution by Diabetes Outcome')

print(p2)
ggsave("D:\\Hello World\\diabetes\\outputs\\boxplotR.png")
