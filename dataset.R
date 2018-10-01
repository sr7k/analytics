# Data structures in R

#vectors----
x=1:10 #create seq of nos from 1 to 10

x
x1 <- 1:20
x1


(x1=1:30)
(x2=c(1,2,3,4,5))
class(x2)
(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a', "Sarthak", "2"))
(x3b = c('a', "Dhiraj", "4"))
class(x3b)
(x4=c(T,FALSE,TRUE,T,F))
class(x4)
x5=c(3L,5L)
class(x5)
(x5b = c(1, 'a', T, 4L))
class(x5b)
?class
class
?class

#access elements
(x6 = seq(0,100,3))
methods(class='character')
ls()
length(x6)
x6[20]
x6[3] #access 3rd element
#[1] 4
x6[c(2, 4)] #access 2nd and 4th element
x6[-1] #access all but 1st element
x6
x6[-c(1:10,15:20)] 
x6[c(2.4, 3.54)] #real numbers are truncated to integers
x6[-(length(x6)-1)]

#modify
sort(x6)
sort(x6, decreasing=T)
x7 = c(x6, x2)
x7
sort(x6[-c(1,2)])
rev(x6)

seq(-3, 10, by=.2)
(x = -c(13:2))

?sort
x[2] <- 0; x
x[x<0] = 5; x #modify elements less than 0
x[x<0] = 5; 
x[x<= 1 & x >= 100] = 5; x #modify elements less than 0

#delete vector
(x = seq(1,5, length.out = 10)) #divide 1 to 5 in 10 parts
(x = seq(1,5, length.out = 15))
x = NULL; x
(x= rnorm(100))
(x1= rnorm(1000000, mean=50, sd=5))
plot(density(x1)) #plot graphs
mean(x1)
mean(x)
abline(v=mean(x1), h=0.04)

#Matrices----
100:111
(m1= matrix(1:12, nrow=4))
(m2= matrix(1:12, ncol=3, byrow=T))
x=101:124
length(x)
matrix(x, ncol=6)

class(m1)
attributes(m1) #Attributes of the matrix
dim(m1) #dimensions of the matrix (which is nothing but the attribute of the matrix)
# access elements of matrix
m1[1,2:3]
m1[c(1,3),]
m1[c(2,3),]
m1[c(3), ]
m1[r(2,3), ]
m1[c(2,3), ]
m1[c(2,3), 1]
m1
m1[c(1:4), 3]
paste("C", "D", sep="-")
paste("C", 1:100, sep="-")

(colnames(m1) = paste('C', 1:3, sep=''))
?paste
(rownames(m1) = paste('R', 1:4, sep=''))
m1
attribute(m1)

#Vector to Matrix
(m3=1:24) 
  
m2[c(TRUE,F,T,F), c(2,3)] #logical indexing
?c
m2[c(1,3), c(2,3)]
m2[m2 > 5 & m2 < 10]
m2
m1;m2
m1[1:2,1:2]
m1[c('R1'), c('C1', 'C3') ]
m1[1:2,]
#modify vectors
m2[2,2]
m2[2,2] = 10
m2
m2[m2> 10] = 99
m2
rbind(m2, c(50,60, 70))
m2
cbind(m2, c(55,65,75,85))
rbind(m2,m2)
cbind(m2,m2)
m1
colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)
colSums(m1); rowSums(m1)
t(m1) #transpose
m1
?transpose
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+") #rowwise
sweep(m1, MARGIN=2, STATS = c(2,3,4), FUN="*") #colwise
addmargins(m1,margin=1,sum) #colwise function
addmargins(m1,1,sd) 
addmargins(m1,2,mean) #rowwise function
addmargins(m1,c(1,2), mean)#row & col wise function

#Arrays-----


#Data Frame----
(rollno = 1:30)
(sname = paste('student',1:30, sep=' '))
(gender = sample(c('M', 'F'), size=30, replace=T, prob=c(.7,.3)))
(gender = sample(c('M', 'F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30, mean=50, sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA', 'MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender
marks ; marks2; course

#create DF

df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors= F); df1

str(df1) #structure of DF
summary(df1)
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)

df <- tibble(
  #Gender = sample(c(M,F), size = , replace=T, prob= c (0.5,.5))
  #rollno. = 1:30
  #sname = paste('s', 1:30, sep= ' ')
  #df= data.frame(roll no., sname, replace = T, StringsAsFactors=F

Grades = sample(c('A','B','C','D'), size = 30, replace=T, prob=c(0.4,0.2,0.3,0.1)
summary(Grades)

#Factors----

#lists----

