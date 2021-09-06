set.seed(083121)

numbers = rnorm(n = 10, mean = 91.67, sd = 4.23)
N = 10


numbers


# Option 1
sigma_1 = sum(numbers)
sigma_1


xbar_1 = sigma_1/N
xbar_1


deviation_1 = numbers - xbar_1
deviation_1


sum(deviation_1)


deviation_sq1 = (numbers - xbar_1)^2
deviation_sq1

sum_dev_sq1 = sum(deviation_sq1)
sum_dev_sq1

unbias = N - 1
unbias

variance1 = sum_dev_sq1/unbias
variance1

sqrt(variance1)




mean(numbers)
sd(numbers)

# option 2
sum_of_scores = sum(numbers)
sum_of_scores

squared_sum_x = sum_of_scores^2

sum_of_squared_x = 90.65452^2 + 88.35043^2 +  90.50860^2 +  94.90358^2 +  91.23696^2 +  86.62074^2 +  87.73044^2 +  97.86154^2 + 
  96.97852^2 +  89.11287^2

squared_sum_x/N

numerator = sum_of_squared_x - 83531.96
numerator

denominator = N - 1

variance_estimated = numerator/denominator
variance_estimated

sqrt(variance_estimated)