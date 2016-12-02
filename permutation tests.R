data(InsectSprays)
g <-  ggplot(InsectSprays, aes(spray, count, fill = spray))
g <-  g + geom_boxplot()
g

# null hypothesis: distribution for each spray is the same
subdata <- InsectSprays[InsectSprays$spray %in% c("B", "C"),]
y <- subdata$count
group <- as.character(subdata$spray)
testStat <- function(w, g) mean(w[g == "B"]) - mean(w[g == "C"])
observedStat <- testStat(y, group)
permutations <- sapply(1 : 10000, function(i) testStat(y, sample(group)))

str(permutations)

observedStat

# percentage of permuted test statistics that are more
# extreme towards alternative than observed statistics
mean(permutations > observedStat)
# reject null

# plotting a histogram permuted test statistics
g <- ggplot(data.frame(permutations = permutations), aes(x = permutations))
g <- g + geom_histogram(color = 'black', fill = 'lightblue')
g <- g + geom_vline(xintercept = observedStat)
g
