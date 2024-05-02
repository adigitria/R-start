
# Task 2: Data Visualization with ggplot2

# Load libraries
library(tidyverse)
library(here)

# Load dataset
data <- read.csv(here("02_data_visualization_ggplot2/test_data_visualization.csv"))

# Scatter plot
ggplot(data, aes(x = VariableX, y = VariableY)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "X Variable", y = "Y Variable")

# Histogram
ggplot(data, aes(x = NumericColumn)) +
  geom_histogram(bins = 30, fill = "steelblue") +
  labs(title = "Histogram")

# Faceted plot
ggplot(data, aes(x = VariableX, y = VariableY)) +
  geom_point() +
  facet_wrap(~ CategoryColumn)
