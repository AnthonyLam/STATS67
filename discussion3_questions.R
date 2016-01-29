###############################
#                             #
#   STAT 67 Discussion 3      #
#      Winter 2016            #
#                             #
###############################


# Ex.  A student taking the SAT decides to guess on every question.
#      Assume each question has five choices and one correct answer, and
#      that there are 60 questions total.
#
#  (a) What is the probability the student gets 10 questions correct?
#
#  (b) What is the probability the students gets 20 questions correct?
#
#  (c) What is the probability the student gets less than 20 questions correct?
#
#  (d) What is the average number of questions the student will get correct with
#      this "strategy"?
#         There are three ways to do this problem.
#         (i) Write R code to calculate the value exactly using the dbinom() function
#             and sum() functions
#
#         (ii) Write R code to approximate the mean of the binomial distribution
#              using the rbinom() function.
#
#         (iii) Derive the formula for the mean of the binomial in general and
#               apply the formula with the correct numbers for the situation
#               described in this problem.


# (d) (i)
probs <- sapply(0:60, dbinom, 60, 0.2)
sum(0:60*probs)

# (d) (ii)

# Simulating a binomial
sample.size <- 100
n <- 10
p <- 0.5
bin.sample <- rbinom(sample.size, n, p)
hist(bin.sample)

sample.size <- 1000000
bin.sample <- rbinom(sample.size, n, p)
hist(bin.sample)

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

# # Geometric Distribution
#
# Ex. We flip a fair coin until we get a heads.  What is the probability of
# flipping 4 times total?
#
# What is the expected number of flips before a heads occurs?

?dgeom
dgeom(3, 0.5)
0.5*(1 - 0.5)^3

# Ex. A brute force bank pin cracker randomly guesses pins numbers until success.
#     This program is extremely stupid and doesn't keep track of what pins
#     it has guessed, so all pins are equally likely at every guess.
#     Assume for there are 10 acceptable characters and a max length of 4.
#
# (a) What is the probability the program guesses the correct password on the
#      100th try?
#
# (b) What is the probability the program guesses the correct password before
#     5000 tries?  Calculate using both pgeom(), and reproduce the answer using
#     dgeom() and sum().
#
# (c) What is the expected number of tries before the program guesses the password?

# (a)

# (b)

# (c): Can't do quite the same as the binomial, can only approximate this way:

################################################################
# Poisson Distribution
# Useful for modelling the number of "rare" events occurring within
# a fixed period of time.
#
#
# Ex. A large technology company experiences attacks on its network at a rate of 5
#     per day.

# (a) What is the probability that 8 attacks will be occur today?


# (b) What is the probability that more than 7 attacks will occur today?



# (c) What is the probability that more than 16 attacks occur over a two day period?


#


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
