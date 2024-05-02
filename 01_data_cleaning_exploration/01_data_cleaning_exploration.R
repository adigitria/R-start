
# Task 1: Data Cleaning and Exploration

# Load libraries
library(tidyverse)
library(here)

# Load dataset
data <- read.csv(here("01_data_cleaning_exploration/test_data_cleaning.csv"))

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
  group_by(Department) %>%
  summarize(MeanSalary = mean(Salary, na.rm = TRUE))
