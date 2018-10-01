#Dummt Variables
df = mtcars
summary(df)
(df$cy = factor(df$cyl))
(df$am = factor(df$am))
m1 = lm(mpg ~ wt + cyl, data=df)
summary(m1)
summary(df$cyl)
data.frame(wt=c(2,3), cyl=factor(c(4,6)))

summary(df)
