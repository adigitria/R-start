
# Task 1: Data Cleaning and Exploration

# Load libraries
library(tidyverse)

# Load dataset
data <- read.csv("your_dataset.csv")

# Explore structure
str(data)
summary(data)
glimpse(data)

# Handle missing values (example)
data_clean <- data %>%
  drop_na() %>%
  rename_all(~ gsub(" ", "_", .))

# Basic dplyr operations
data_clean %>%
  group_by(CategoryColumn) %>%
  summarize(MeanValue = mean(NumericColumn, na.rm = TRUE))
