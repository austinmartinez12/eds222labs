p <- 0.5
n1 <- 600
n2 <- 400

n_samples <- 1e4

x1 <- rbinom(n= n_samples,
             size = n1,
             prob = p)
x2 <- rbinom(n= n_samples,
             size = n2,
             prob = p)
# after screenshot
# Standard error for the null hhypothesis
#SE(p_hat)

p1_hat <- x1/n1
p2_hat <- x2/n2
diff_prop <- p2_hat - p1_hat

p_hat <- (x1 + x2) / (n1 +n2)
hist(p_hat)

se_null <- sqrt(p_hat *(1-p_hat) * (1/n1 + 1 / n2))

#pnorn() is the area under the curve
# why is mean 0?
# why is sd = se_null?
# why is he first argument = diff_prop?
pval <- pnorm(diff_prop, mean = 0, sd = se_null, lower.tail = FALSE)
#pnorm(.3, mean = 0, sd = se_null[1], lower.tail = FALSE)

mean(pval <= 0.05)




# What is the difference between 
rnowm()
dnorm()
pnorm() - # area under the left side of density curve (bottm left of bell)
qnorm() - #
  
random_numbers <- rnorm(100, mean = 0, sd = 1)
hist(random_numbers)

x <- seq(-4, 4, legnth.out = 5)
density <- dnorm(x, mean = 0, sd = 1)


After pic:
  
  
after pic:

#pnorm() is the area under the curve
#whats the prob of getting a random number less
# than -0.6?
pnorm(-0.6, mean=0, sd=1)
# assosiate p-values with pnorm() applied to the null distribution


#qnorm()
#what x value corresponds to 2.5% area undeer the curve?
qnorm(0.025, mean = 0, sd = 1)
qnorm(0.975, mean = 0, sd = 1)
# assosiate CIs with qnorm() aaplied to the sampling distrobution (not under the HO)





