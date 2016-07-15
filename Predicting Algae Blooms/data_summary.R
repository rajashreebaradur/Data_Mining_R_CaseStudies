#summary of the data
summary(algae)

#histogram of mxPH variable
hist(algae$mxPH, prob = T)

#library(car)
#set parameters for histogram
par(mfrow=c(1,2))
hist(algae$mxPH, prob=T, xlab='', main='Histogram of maximum pH value', ylim=0:1)
lines(density(algae$mxPH, na.rm = T))

#plot the Q-Q plot
rug(jitter(algae$mxPH))
qqPlot(algae$mxPH, main='Normal QQ plot of mazimum pH')
par(mfrow=c(1,1))

#plot boxplot for oPO4
boxplot(algae$oPO4, ylab="Orthophosphate (oPO4)")
rug(jitter(algae$oPO4), side = 2)
abline(h = mean(algae$oPO4, na.rm = T), lty = 2)