


#plot
women
plot(women)
plot(women, type='p', pch=8, col='red')
plot(women, type='l')
plot(women, type='b', pch=18, lty=2, col=2)
plot(women, xlim=c(30,100), ylim=c(min(women$weight) -10, 200), pch=10)
plot(x=women$weight, y=women$height, pch=15, xlab='Weight', ylab='Height', col='red', cex=2, type='b')


plot(women)
abline(lm(women$weight ~ women$height), col='red', lty=2, lwd=4)
boxplot(women)
summary(women)
quantile(women$height)
quantile(women$height, seq(0,1,.01))
stem(women$height)


#histogram
hist(women$height)
hist(women$height, breaks=10)
hist(x, freq=F, colg=1:5)
sales1 = read.csv("./data/denco.csv")
sales1 = read.csv(file.choose())
str(sales1)
head(sales1)
library(gsheet)

sales= sales1
head(sales)
str(sales)
class(sales)
dim(sales)
summary(sales)
names(sales)
head(sales)
tail(sales)

library(dplyr)
sales %>% count(custname, sort=TRUE) %>%head(n=5)
sales %>% group_by(custname) %>% dplyr::summarise(n=n())

sales %>% group_by(partnum) %>% summarize(Revenue = sum(revenue)) %>% arrange(desc(TotalMargin)) %>% head(n=5)
