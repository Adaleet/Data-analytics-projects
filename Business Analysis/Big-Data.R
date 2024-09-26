# Generate random data
set.seed(123)  # Setting seed for reproducibility
data <- data.frame(
  ID = 1:100,
  Age = sample(18:60, 100, replace = TRUE),
  Income = round(rnorm(100, mean = 50000, sd = 15000), 2),
  Gender = sample(c("Male", "Female"), 100, replace = TRUE)
)

# Display the first few rows of the data
print("First few rows of the data:")
head(data)

# Summary statistics of the data
print("Summary statistics:")
summary(data)

# Install ggplot2 package if not already installed
if (!require(ggplot2)) {
  install.packages("ggplot2")
}

# Load ggplot2 for visualization
library(ggplot2)

# Create a histogram of the 'Age' column
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Age", x = "Age", y = "Frequency") +
  theme_minimal()

# Create a boxplot of 'Income' by 'Gender'
ggplot(data, aes(x = Gender, y = Income, fill = Gender)) +
  geom_boxplot(alpha = 0.7) +
  labs(title = "Income Distribution by Gender", x = "Gender", y = "Income") +
  theme_minimal()

# Calculate mean income by gender
mean_income_by_gender <- aggregate(Income ~ Gender, data, mean)
print("Mean Income by Gender:")
print(mean_income_by_gender)
