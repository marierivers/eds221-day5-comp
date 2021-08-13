# Testing testthat

# Requires package:
# install.packages('testthat')
# install.packages('devtools')
# install.packages('remotes')

# Create a function that takes any numeric data frame (all variables are numbers), finds the mean of all columns, then finds the maximum column mean, and the minimum column mean from the data frame, and return those min and max mean values in a vector (min_mean_value, max_mean_val)

# use apply() for the means
# apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE)
# margin = 2 refers to columns. Would have used margin = 1 if looking at rows

install.packages('testthat')
install.packages('devtools')
install.packages('remotes')

library(testthat)

#' Min/Max of a Function
#' 
#' This function calculates the minimum and maximum means of all numeric columns in a data frame
#'
#' @param df This is the data frame that you would like to evaluate
#'
#' @return
#' @export
#'
#' @examples
mean_range <- function(df) {
  col_means <- apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE)
  col_mean_max <- max(col_means) # this values are only temporary and not actually stored on their own. Only stored within the mean_range vector
  col_mean_min <- min(col_means)
  return(c(col_mean_min, col_mean_max))
}

print(mean_range(df = mtcars))

print(mean_range(mtmars)[1]) # this gives you the first enter in the vector, which is the min value

expect_length(mean_range(df = mtcars), 2) # does the output vector have a length of 2?

expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2])

typeof(mean_range(mtcars))

expect_type(mean_range(mtcars), "double")
