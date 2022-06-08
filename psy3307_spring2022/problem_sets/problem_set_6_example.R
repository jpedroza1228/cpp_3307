# Let's compare some groups

compare <- data.frame(group1 = c(4, 8, 9, 10, 9),
                      group2 = c(3, 2, 2, 4, 1))
compare

# create null and alternative hypotheses

# H0:
# H1:

# get the means for each group

# group 1
(4 + 8 + 9 + 10 + 9)/5
# group 1 mean = 8

# group 2
(3 + 2 + 2 + 4 + 1)/5
# group 2 mean = 2.4


# get the n per group
# get the total N

# get the variance and standard deviations for both groups

# group 1 variance and sd
4 - 8
8 - 8
9 - 8
10 - 8
9 - 8

(-4)^2 + 0^2 + 1^2 + 2^2 + 1^2
# 22 is sum of squares/sum of squared errors
# df = 4
22/4
# variance = 5.5
sqrt(5.5)
# sd = 2.35

# group 2 variance and sd
3 - 2.4
2 - 2.4
2 - 2.4
4 - 2.4
1 - 2.4

.6^2 + (-.4)^2 + (-.4)^2 + 1.6^2 + (-1.4)^2
# 5.2 sum of squares
# df = 4
5.2/4
# variance = 1.3
sqrt(1.3)
# sd = 1.14
sd(compare$group2)

