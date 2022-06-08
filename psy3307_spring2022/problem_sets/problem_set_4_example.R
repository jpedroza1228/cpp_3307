# 1 = A
# 2 = B
# 3 = C
# 4 = D
# 5 = F

example <- data.frame(grade = c(1, 2, 3, 3, 3,
                                4, 5, 2, 3, 1, 
                                1, 4, 3, 3, 2))
example$n <- 15
example$df <- example$n - 1
example$mean_value <- mean(example$grade)
example$deviance <- example$grade - example$mean_value
example$dev_sum <- sum(example$deviance)
example$dev_squared <- example$deviance^2
example$ss <- sum(example$dev_squared)
example$mu <- 3
example$pop_se <- 1

example

# What is the variance?

# Standard deviation?

# Standard Error?

# z-test (mean - mu)/population SE

# let's use our z-table

# what is our z-table critical value

# one-sample t-test (mean - mu)/estimated population SE [the one you calculated]

# t-table

# what is our t-table critical value