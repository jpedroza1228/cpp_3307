set.seed(090121)

numbers = rnorm(n = 10, mean = 7.42, sd = 4.23)

N = 10

numbers

# Option 1 for variance & sd

# get the sum
4.377026 + 8.628671 + 6.403844 + 10.191558 + 4.452261 + 7.848496 + 12.25767 + 7.950580 + 9.182271 + 0.705607
# sum is 71.99798

# get the mean
71.99798/10
# mean is 7.199798

# get the deviates
4.377026 - 7.199798 # -2.822772
8.628671 - 7.199798 # 1.428873
6.403844 - 7.199798 # -0.795954
10.191558 - 7.199798 # 2.99176
4.452261 - 7.199798 # -2.747537
7.848496 - 7.199798 # 0.648698
12.25767 - 7.199798 # 5.057872
7.950580 - 7.199798 # 0.750782
9.182271 - 7.199798 # 1.982473
0.705607 - 7.199798 # -6.494191

# square the deviates
(-2.822772)^2
(1.428873)^2
(-0.795954)^2
(2.99176)^2
(-2.747537)^2
(0.648698)^2
(5.057872)^2
(0.750782)^2
(1.982473)^2
(-6.494191)^2

# get the sum of the squared deviates
7.968042 + 2.041678 + 0.6335428 + 8.950628 + 7.54896 + 0.4208091 + 25.58207 + 0.5636736 + 3.930199 + 42.17452
# numerator is 99.81412

# denominator is 10 - 1
10-1
# denominator is 9

# get the variance
99.81412/9
# variance is 11.09046

# standard deviation is the variance squared
sqrt(11.09046)
# sd is 3.330234

# double check our work

sd(numbers)
# pretty close

# Option 2 for variance & sd

numbers

4.377026 + 8.628671 + 6.403844 + 10.191558 + 4.452261 + 7.848496 + 12.25767 + 7.950580 + 9.182271 + 0.705607
# sum is 71.99798

71.99798^2
# squared sum of x is 5183.709

5183.709/10
# 518.3709 is the value after dividing by N

4.377026^2 + 8.628671^2 + 6.403844^2 + 10.191558^2 + 4.452261^2 + 7.848496^2 + 12.25767^2 + 7.950580^2 + 9.182271^2 + 0.705607^2
# sum of squared Xs is 618.1851

618.1851 - 518.3709
# numerator is 99.8142

# denominator is N - 1
10-1

99.8142/9

# variance is 11.09047

sqrt(11.09047)

# sd is 3.330236

sd(numbers)



# Get the Range
data_example <- data.frame(Maximum = c(81, 41, 80, 71, 100, 4, 39, 71, 60, 38),
                           Minimum = c(50, 2, 34, 10, 9, 0, 12, 5, 50, 3))

data_example



# Get the z-Score
get_z <- data.frame(single_obs = c(8, 10, 23, 23, 30, 53, 40, 57, 27, 8),
                    mean = c(10, 15, 17, 24, 34, 45, 36, 50, 41, 4),
                    sd = c(2.1, 3.1, 1.4, 3, 1.2, .2, .9, .47, .16, .67))

get_z



# Get the raw score from the z-score
get_raw <- data.frame(z = c(1, 2, 3, -3, -2, -1, 1.4, 1.6, -2.4, -3),
                      mean = c(10, 15, 17, 24, 34, 45, 36, 50, 41, 4),
                      sd = c(2.1, 3.1, 1.4, 3, 1.2, .2, .9, .47, .16, .67))

get_raw



# Get the standard error of the mean
get_sample_distribution <- data.frame(ind_mean = c(10, 15, 17, 24, 34, 45, 36, 50, 41, 4),
                                  mu = c(12, 16, 14, 22, 30, 40, 32, 54, 43, 8),
                                  sigma_x = c(3, 2, 4, 1.4, .2, .6, .7, .1, 2.4, 2.9), #this is not sigma xbar
                                  N = c(10, 12, 14, 16, 20, 24, 11, 8, 15, 10))

get_sample_distribution


# Get the z-score for the sample distribution

get_sample_distribution



# try variance and sd in a group
set.seed(090221)

numbers = rnorm(n = 10, mean = 4.14, sd = 1.11)

N = 10

numbers

