###############################
#                             #
#   STAT 67 Discussion 4      #
#      Winter 2016            #
#                             #
###############################


# What is the shape of the binomial for small values of p?

# What is the shape of the binomial for large values of p?

# How does the binomial distribution change as you change n?

# Binomial with n = 50, p = 0.2
n <- 15
p <- 0.3
sample.size <- 1000000
bin.sample <- rbinom(sample.size, n, p)
hist(bin.sample)

plot(dbinom(0:15, 15, 0.3), ty='b', xlab="Success", ylab="Probability",
     main="Binomial(15, 0.3) PDF", col="violetred", pch=5)

################################################################
# Poisson Distribution
# Useful for modelling the number of "rare" events occurring within
# a fixed period of time.
#
#
# Ex. A large technology company experiences attacks on its network at a rate of 5
#     per day.

# (a) What is the probability that 8 attacks will be occur today?
dpois(8, 5)

# (b) What is the probability that more than 7 attacks will occur today?
1 - ppois(7, 5)
ppois(7, 5, lower.tail=FALSE)

# (c) What is the probability that more than 16 attacks occur over a two day period?
ppois(16, 10, lower.tail=FALSE)

# Plotting the Poisson distribution
probs <- dpois(0:20, 5)
plot(probs, type='b')

probs <- dpois(0:25, 1)
plot(probs, type='b')

# Plotting the cdf:
probs <- ppois(0:10, 1)
plot(probs, type='b')

probs <- ppois(0:25, 5)
plot(probs, type='b')

############################################################################
#
# Poisson Exercise
#
# Drives at a server farm fail according to a poisson distribution with an
# average rate of 3/day.
#
# a) Calculate the probability of exactly 2 drive failures in a day?
#
# b) Probability of exactly 10 drive failures in a day?
#
# c) Probability of less than 5 failures in a day?
#
# d) Probability of more than 2 failures in a day?
#
# e) What is the probability of more than 20 drive failures in a week?
#
# f) The time between drive failures follows an exponential distribution with
#    rate 3.  What is the probability that less than two days pass
#    between drive failures?
#######################################################################

#######################################################################
#
# Approximations to the Binomial
#
# a) Plot the pmfs for Binom(5, 0.7), Binom(100, 0.1).  Pick your own values
#    for n and p and plot the pmf.


# b) Plot the pmfs for Binom(10, 0.7) and Pois(7) on the same plot


# c) For X ~ Binom(50, 0.4), compare the exact value of P(X <= 15) with
#     the normal approximation of this probability.


##############################################################################

#############################################################################
#
# Integration by simulation.
#
# Calculate the integral(x^2, x, 0, 1) using MC simulation.
#

