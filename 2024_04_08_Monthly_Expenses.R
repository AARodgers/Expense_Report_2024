# New Monthly Expenses script

# Load tidyverse
library(tidyverse)
# Load the dplyr package
library(dplyr)

## Upload Expense Report
new_expenses <- read.csv("Monthly_Expenses.csv")
View(new_expenses)

# EDA exploratory data analysis
#view first few lines, or can do tail(my_data)
head(expenses)
#summary
summary(expenses)
#explore structure
str(expenses)
