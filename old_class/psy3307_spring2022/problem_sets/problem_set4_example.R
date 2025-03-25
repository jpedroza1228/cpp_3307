
data <- data.frame(mistakes = c(5, 3, 4, 5, 6, 1, 
                                2, 2, 4, 6, 5, 10),
                   mean = c('', '', '', '', '', '',
                            '', '', '', '', '', ''),
                   deviance = c('', '', '', '', '', '',
                                '', '', '', '', '', ''),
                   dev_squared = c('', '', '', '', '', '',
                                   '', '', '', '', '', ''),
                   prediction_first_time = c(5, 5, 5, 5, 5, 5,
                                             5, 5, 5, 5, 5, 5),
                   dev_squared_first_time = c('', '', '', '', '', '',
                                              '', '', '', '', '', ''),
                   prediction_second_time = c(9, 9, 9, 9, 9, 9, 
                                              9, 9, 9, 9, 9, 9),
                   dev_squared_second_time = c('', '', '', '', '', '',
                                               '', '', '', '', '', ''))

data

# number of participants

# mean of mistakes

# deviance

# sum of errors/total deviation

# deviance squared

# sum of squared errors/sum of squares

# degrees of freedom

# variance/mean squared error

# standard deviation

# making predictions

# first time, let's say that the predicted amount of errors is 2

# let's calculate the deviance squared values for each participants and get the sum of squares

# second time, let's say that the predicted amount of errors is 9

# let's calculate the deviance squared values for each participants and get the sum of squares

# calculate the standard error

# calculate some confidence intervals using the 95% distribution of z-scores
# mean - (1.96 * SE)
# mean + (1.96 * SE)


jp <- data
jp$mean <- mean(jp$mistakes)
jp$deviance <- jp$mistakes - jp$mean
jp$dev_squared <- jp$deviance^2
sum(jp$deviance)
sum(jp$dev_squared) # sum of squared errors
jp$df <- 12-1
sd(jp$mistakes)^2
sd(jp$mistakes)
jp$dev_squared_first_time <- (jp$mistakes - jp$prediction_first_time)^2 # prediction 2 mistakes
sum(jp$dev_squared_first_time)
jp$dev_squared_second_time <- (jp$mistakes - jp$prediction_second_time)^2
sum(jp$dev_squared_second_time)

jp$se_value <- sd(jp$mistakes)/sqrt(12)

ci_calc <- function(m, se){
  lower <- m - (1.96*se)
  upper <- m + (1.96*se)
  
  return(list(lower, upper))
}

jp

ci_calc(m = 4.42, se = .69)
