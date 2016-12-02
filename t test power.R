# when true mean is not equal mu0 than statistic
# doesn't follow t distribution but something called
# non-central t distribution. 
# power may be calculated by power.t.test

# examples
# one-sided means than mua > mu0

# omitting the power and getting a power estimate
power.t.test(n = 16, delta = 2/4, sd = 1, type = "one.sample", alt = "one.sided")$power
# illustrating that it depends only on the effect size, delta/sd
power.t.test(n = 16, delta = 2, sd = 4, type = "one.sample", alt = "one.sided")$power

# same thing again
power.t.test(n = 16, delta = 100, sd = 200, type = "one.sample", alt = "one.sided")$power

# specifying the power and getting n
power.t.test(power = 0.8, delta = 2/4, sd = 1, type = "one.sample", alt = "one.sided")$n

# again illustrating that the effect size is all that matters
power.t.test(power = 0.8, delta = 2, sd = 4, type = "one.sample", alt = "one.sided")$n

# again illustrating that the effect size is all that matters
power.t.test(power = 0.8, delta = 100, sd = 200, type = "one.sample", alt = "one.sided")$n


power.t.test(power = 0.8, n = 16, sd = 200, type = "one.sample", alt = "one.sided")$delta
