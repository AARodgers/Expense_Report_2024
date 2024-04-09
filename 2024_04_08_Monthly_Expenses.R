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
head(new_expenses)
#summary
summary(new_expenses)
#explore structure
str(new_expenses)

# Remove columns that start with X
# Function to remove columns starting with "X"
remove_columns_starting_with_X <- function(new_expenses) {
  # Get column names
  column_names <- names(new_expenses)
  
  # Check if any column starts with "X"
  if (any(grepl("^X", column_names))) {
    # If true, remove columns starting with "X"
    cleaned_data <- new_expenses[, !grepl("^X", column_names)]
    return(cleaned_data)
  } else {
    # If false, return original data frame
    return(new_data)
  }
}

# Apply the function
cleaned_df <- remove_columns_starting_with_X(new_expenses)

# View cleaned data frame
print(cleaned_df)
View(cleaned_df)

# Group expenses by category
grouped_expenses <- cleaned_df %>%
  group_by(Category)

# Summarize expenses within each category
summarized_expenses <- grouped_expenses %>%
  summarize(Total_Amount = sum(Amount))

# View the summarized data
print(summarized_expenses)