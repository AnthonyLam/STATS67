###############################
#                             #
#   STAT 67 Discussion 2      #
#      Winter 2016            #
#                             #
###############################


# Function for factorial
my.factorial <- function(n) { 
    result <- 1
    for(i in 1:n){
        result <- i*result
    }
    return(result)
}

my.factorial(10)
my.factorial(100)
my.factoria(1000)
factorial(1000)

# Function for combinations (choose)
choose(6, 4)
factorial(6)/(factorial(4)*factorial(2))

# Calculating a binomial probability:
#  x=successes, n=total trials, p=prob of success

get.binom.prob <- function(x, n, p) { 
    return(choose(n,x)*p^x*(1-p)^(n-x))  
}

get.binom.prob(1, 3, 0.5)
dbinom(1, 3, 0.5)

### Other binomial probability calculations
# Ex. Number of trials=7, probability of success = 0.63, what is probability of 3 successes?
get.binom.prob(3, 7, 0.63)
dbinom(3, 7, 0.63)

# Plotting a binomial distribution
probs <- sapply(0:10, dbinom, 10, 0.5)
plot(probs, ty='b')

# What do we get if we add up the probabilities for all outcomes of a binomial random variable?
sum(probs)


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

# Simulating a binomial
sample.size <- 1000
n <- 10
p <- 0.5
bin.sample <- rbinom(sample.size, n, p)
hist(bin.sample)

sample.size <- 1000000
bin.sample <- rbinom(sample.size, n, p)
hist(bin.sample)

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
