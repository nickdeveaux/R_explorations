N <- 200
R <- 1000
x = numeric(R)
mean_spread = numeric(R)
for (i in 1:R) {
  sample_spread <- rep(NA, N)
  for (j in 1:N){
    group1 = rnorm(i)
    sample_spread[j] <- max(group1) - min(group1)
  }
  mean_spread[i] = mean(sample_spread)
  x[i] = i
}

plot(log(x), mean_spread)
plot(x, exp(mean_spread))

fit <- lm(mean_spread ~ log(x))
summary(fit)


fit <- lm(exp(mean_spread) ~ x)
summary(fit)
