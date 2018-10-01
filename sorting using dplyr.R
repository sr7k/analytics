# data analysis using dplyr

install.packages(dplyr)
library(dplyr1)
dplyr::filter(mtcars, mpg > 25)
?mtcars
dplyr::filter(mtcars, mpg > 25 & am==1)

mtcars %>% filter(mpg > 25 & am==1)
mtcars %>% filter(mpg > 25 & am==1) %>% arrange(wt) %>% summarise (n())
mtcars %>% group_by(am) %>% summarise(mean(mpg))
mtcars %>% group_by(gear) %>% summarise(mean(wt))

filter(mtcars, cyl <6)

# Multiple criteria
filter(mtcars, cyl < 6 & vs == 1)
filter(mtcars, cyl < 6 | vs == 1)

# Multiple arguments are equivalent to and
filter(mtcars, cyl < 6, vs == 1)


filter(mtcars, row_number() == 1L)
filter(mtcars, row_number() == n())
filter(mtcars, between(row_number(), 5, n()-2))

#mutate----
mutate(mtcars, displ_l = disp / 61.0237) #keeps other col
transmute(mtcars, displ_l = disp / 61.0237) #removes other cols
mutate(mtcars, cyl = NULL) #do not display cyl


#slice-----
slice(mtcars, 1L)
slice(mtcars, n())
slice(mtcars, 5:n())
slice(mtcars, c(2,4,5,10))

mtcars %>% groupby(am), summarise(mean(mpg), max(wt), min(wt))
mtcars %>% groupby(am, gear) %>% summarise_all(c("min", "max"))

#mutate----
mutate(mtcars, displ_l = disp / 61.0237) #keeps other col
transmute(mtcars, displ_l = disp / 61.0237) #removes other cols
mutate(mtcars, cyl = NULL) #do not display cyl


#slice-----
slice(mtcars, 1L)
slice(mtcars, n())
slice(mtcars, 5:n())
slice(mtcars, c(2,4,5,10))

(by_cyl <- group_by(mtcars, cyl)) # ???
slice(by_cyl, 1:2)

#structure----
tbl_df(mtcars) # convert to tbl class
glimpse(mtcars)  # dense summary of tbl data
View(mtcars) # spreasheet like form base pacakge
mtcars %>% group_by(am) 
#nothing - just separation

mtcars %>% group_by(am) %>% summarise(mean(mpg), max(wt))


#summarise----
summarise(mtcars, mean(disp))  
summarise(group_by(mtcars, cyl), mean(disp)) 
summarise(group_by(mtcars, cyl), m = mean(disp), sd = sd(disp))


#summarise_all
mtcars %>% group_by(am, gear) %>% summarise_all(mean)
mtcars %>% group_by(am, gear)%>% summarise_all(c("min", "max"))
mtcars %>% group_by(am, gear)%>% summarise_all(funs(med = median))



#without Group
mtcars %>% summarise(mean(mpg), max(wt))
mtcars %>% summarise_all(mean)
mtcars %>% select(wt, gear)%>% summarise_all(c("min", "max"))
mtcars %>% summarise_all(funs(med = median))



#summarise if : 
mtcars %>% summarise_if(is.numeric, mean, na.rm = TRUE)
str(iris)  #Species is a factor
iris %>% summarise_if(is.numeric, mean, na.rm = TRUE)

#specific columns
mtcars %>% summarise_at(c("mpg", "wt"), mean, na.rm = TRUE)


