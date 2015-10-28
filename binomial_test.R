#The null hypothesis: the ratio of male to female for sendout samples is equivalent to the male to female ratio for all samples

male <- 27
female <- 179
n <- male + female
x <- male
p <- 953/ (953 + 2190) 
binom.test(x, n, p,
           alternative = c("two.sided", "less", "greater"),
           conf.level = 0.95)

