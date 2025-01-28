function_name <- function(inputs) {
  output_value <- do_something(inputs)
  return(output_value)
}

square <- function(x) {
  result <- x^2
  return(result)
}

square(3)
y<-4
square(y) #16
square(y+1) #25

nth_power <- function(x, n) {
  result <- x^n
  return(result)
}
nth_power(3, 2) #9
nth_power(3, 4) #81

#gt stands for greater than
gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
  return(result)
}
gt_threshold(c(1,2,4),3) #1
