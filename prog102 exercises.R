# prog102 pre-lecture exercises

# Writing your own functions in R
# Label the five parts of this function:
first_and_last <- function(s) {
  first_char <- substr(s, 1, 1)
  last_char <- substr(s, nchar(s), 1)
  result <- paste(first_char, last_char)
  return(result)
}
# first_and_last = NAME
# function() = KEYWORD FUNCTION
# s = PARAMETER
# first_char + last_char + result = BODY
# return() = RETURN OUTPUT

# Match the function bodies on the left with the name that describes what
# they're doing on the right
# increment
function(x) {
  result <- x + 1
  return(result)
}
# double
function(a) {
  result <- a * 2
  return(result)
}
# hypotenuse_length
function(a, b) {
  c_squared <- a^2 + b^2
  result <- sqrt(c_squared)
  return(result)
}

# Write a function that turns a vector into a palindrome. For example, it should
# turn 1 2 3 into 1 2 3 3 2 1. Hint: you’ll have to use a function called rev().
# Choose a short but descriptive name for your function.
# ???????????????? internet helped
make_palindrome <- function(vec) {
  # Combine the original vector with its reverse (excluding the first element of the reverse)
  c(vec, rev(vec[-1]))
}

# Example usage:
make_palindrome(c(1, 2, 3))
# why does this not include the last 1?

# How functions execute
fish_mass <- 5
temperature <- 20
fish_growth <- function(mass, temp) {
  growth <- 2 + 0.2 * temp
  mass <- mass + growth
  return(mass)
}
fish_growth(fish_mass, temperature)
# 11
# change initial mass to 6, value will be 12
# change 2 + 0.2 to 3 + 0.2 to get value of 12

# In your own words, why does running this code generate an error?
calc_volume <- function(height, width, depth) {
  area <- height * width
  volume <- area * depth
  return(volume)
}
vol <- calc_volume(3, 5, 1)
area
# area has not been defined outside the function. It cannot be found.

# Default and named parameters R represents missing data with the value NA. Say
# you’re doing an experiment and you miss the second observation. In R you can
# write that as c(1, NA, 3, 4). Most summary functions, like mean(), max(), and
# median(), have a parameter called na.rm. What does this parameter do? What is
# its default value? How would you get the maximum value of the vector c(1, NA,
# 3, 4)? MY ANS: na.rm is used to specify when NA values should be kept or
# removed from the function. It defaults as na.rm = FALSE which WILL return NA
# if it exists in the vector. To get the maximum values, set na.rm = TRUE and
# any NA values will be ignored when the code is run.

