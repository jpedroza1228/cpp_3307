data <- data.frame(mistakes = c(5, 3, 4, 5, 6, 1, 
                                2, 2, 4, 6, 5, 10),
                   mean = c('', '', '', '', '', '',
                            '', '', '', '', '', ''),
                   deviance = c('', '', '', '', '', '',
                                '', '', '', '', '', ''),
                   dev_squared = c('', '', '', '', '', '',
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

# z-test
# population mean/mu = 5
# population standard deviation = 1.7
# xbar - mu/population SE

# calculate population standard error


# calculate z-test score


# compare to z-critical value


# one-sample t-test
# population mean = 8
# calculate the standard error

# xbar - mu/estimated standard error

jp <- data
jp$mean <- mean(jp$mistakes)
jp$deviance <- jp$mistakes - jp$mean
jp$dev_squared <- jp$deviance^2
sum(jp$deviance)
sum(jp$dev_squared) # sum of squared errors
jp$df <- 12-1
sd(jp$mistakes)^2
sd(jp$mistakes)

1.7/sqrt(12)

(jp$mean - 5)/.49
# 1.19 z obtained

2.39/sqrt(12)

(jp$mean - 8)/.69
# -5.19