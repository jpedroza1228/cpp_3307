options(scipen = 999)

set.seed(082421)
# creating 5 different categories, with different amounts of time they show up in the data
categories = rep(letters[1:5], times = c(5, 4, 6, 8, 7))

# 30 observations with the mean and standard deviation
test_scores = rnorm(n = 30, mean = 7.14, sd = 2.16)

# Making the categories act like categories rather than numerical values
categories = as.factor(categories)

# Observations (be careful R is case sensitive)
N = 30




# Getting frequencies by using R as a calculator

# get the frequencies of all the categories
table(categories)

# Frequency & Percentage of A
5/30
(5/30)*100

# Frequency & Percentage of B
4/30
(4/30)*100

# Frequency & Percentage of C
6/30
(6/30)*100

# Frequency & Percentage of D
8/30
(8/30)*100

# Frequency & Percentage of E
7/30
(7/30)*100

# cumulative frequencies of categories A & B
(5/30) + (4/30)
# another option is to do the calculations above and then just add up the frequency of A with the frequency of B
.167 + .133

# To get the cumlative percentage of all 5 categories
(5/30)*100 + (4/30)*100 + (6/30)*100 + (8/30)*100 + (7/30)*100
# you can also use the calculations above to add up all the percentages
16.667 + 13.333 + 20 + 26.667 + 23.333


# Now getting frequencies by using objects

#remember that N is the number of observations
N

freq_a <- 5/N
freq_a

# Percent of category A
percent_a <- freq_a*100
percent_a

freq_b <- 4/N
freq_b

percent_b <- freq_b*100
percent_b

freq_c <- 6/N
freq_c

percent_c <- freq_c*100
percent_c

freq_d <- 8/N
freq_d

percent_d <- freq_d*100
percent_d

freq_e <- 7/N
freq_e

percent_e <- freq_e*100
percent_e

# cumulative frequency of A & B
freq_ab = freq_a + freq_b
freq_ab

# To get the cumlative percentage of all 5 categories
total_percent = percent_a + percent_b + percent_c + percent_d + percent_e
total_percent




# find the mode
# which value occurs most often
table(categories)




# Finding the mean
sort(test_scores)

#look for the middle value or in this case the 15th and 16th observations
# 7.060384 & 7.212301 and then divide by 2
(7.06 + 7.21)/2

# find the median using objects
sort(test_scores)
sort(test_scores)[15:16]

get_median = (7.06 + 7.21)/2
get_median

median(test_scores)



# Finding the mean
# look at test scores first in order for lowest to highest
sort(test_scores)

# Now let's get the sum of the scores
1.98 + 3.54 + 3.57 + 4.28 + 4.40 + 4.51 + 4.98 + 5.67 + 5.90 + 6.09 + 6.44 + 6.44 + 6.59 + 6.82 + 7.06 +
  7.21 + 7.29 + 7.82 + 7.87 + 7.87 + 8.24 + 8.69 + 8.85 + 8.92 + 9.38 + 9.41 + 10.67 + 10.95 + 12.06 + 12.59

# Now let's divide the sum of the scores by the number of observations to get the mean
(1.98 + 3.54 + 3.57 + 4.28 + 4.40 + 4.51 + 4.98 + 5.67 + 5.90 + 6.09 + 6.44 + 6.44 + 6.59 + 6.82 + 7.06 +
    7.21 + 7.29 + 7.82 + 7.87 + 7.87 + 8.24 + 8.69 + 8.85 + 8.92 + 9.38 + 9.41 + 10.67 + 10.95 + 12.06 + 12.59)/30

# 7.20 is the mean of our scores


# Now getting the mean with objects
sort(test_scores)

# look at how many observations we have
N

# Now lets get the sum of the scores
sum_of_scores = sum(test_scores)
sum_of_scores

# get the mean
xbar = sum_of_scores/N
# could also look at it this way
xbar2 = sum_of_scores/30

xbar
xbar2

# we get the same mean




#Finding how far each participant deviates from the mean value/score
sort(test_scores)
# look at how far students deviated from the average score by doing each one individually
1.98 - 7.20
3.54 - 7.20
3.57 - 7.20
4.28 - 7.20
4.40 - 7.20
4.51 - 7.20
4.98 - 7.20
5.67 - 7.20
5.90 - 7.20
6.09 - 7.20
6.44 - 7.20
6.44 - 7.20
6.59 - 7.20
6.82 - 7.20
7.06 - 7.20
7.21 - 7.20
7.29 - 7.20
7.82 - 7.20
7.87 - 7.20
7.87 - 7.20
8.24 - 7.20
8.69 - 7.20
8.85 - 7.20
8.92 - 7.20
9.38 - 7.20
9.41 - 7.20
10.67 - 7.20
10.95 - 7.20
12.06 - 7.20
12.59 - 7.20

# now to get the sum of the deviations
# this is right, you might just have to go past two decimal points
(-5.22) + (-3.66) + (-3.63) + (-2.92) + (-2.8) + (-2.69) + (-2.22) + (-1.53) + (-1.3) + (-1.11) + (-.76) + (-.76) +
  (-.61) + (-.38) + (-.14) + .01 + .09 + .62 +.67 + .67 + 1.04 + 1.49 + 1.65 + 1.72 + 2.18 +2.21 + 3.47 + 3.75 + 4.86 + 5.39

# Now getting the deviations from the mean score/value using objects
# remember to look at the test scores
sort(test_scores)

# lets remember what the mean was
xbar

# look at how far students deviated from the average score using the objects we created earlier
deviation = test_scores - xbar
deviation

# look to see how far the worse test score was from the mean
sort(deviation)

# getting the sum of the deviations
sum(deviation)






