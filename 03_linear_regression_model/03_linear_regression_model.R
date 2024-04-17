
# Task 3: Linear Regression Modeling

# Load libraries
library(tidyverse)
library(broom)

# Load dataset
data <- read.csv("test_data_regression.csv")

# Fit linear model
model <- lm(Outcome ~ Predictor1 + Predictor2, data = data)

# Summary
summary(model)

# Tidy output
tidy(model)

# Plot regression line
ggplot(data, aes(x = Predictor1, y = Outcome)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
