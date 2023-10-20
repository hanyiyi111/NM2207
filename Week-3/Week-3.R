library(tidyverse)
x <- 'A'
x
x <- "Apple"
x
x <- FALSE
x
x <- 5L
x
x <- 5
x
x <- 1i
x
x <- 'A'
typeof(x)
x <- "Apple"
typeof(x)
x <- FALSE
typeof(x)
x <- 5L
typeof(x)
x <- 5
typeof(x)
x <- 1i
typeof(x)
cat_lovers <- read_csv("cat-lovers.csv")
mean(cat_lovers$number_of_cats)
?mean
mean(as.integer(cat_lovers$number_of_cats))
cat_lovers$number_of_cats
as.integer(cat_lovers$number_of_cats)
x <- vector()
typeof(x)
x<-vector("logical",length=5)
print(x)
print(typeof(x))
x<-logical(5)
print(x)
print(typeof(x))
x<-c(TRUE,FALSE,TRUE,FALSE,TRUE)
print(x)
print(typeof(x))
x<-vector("character",length=5)
print(x)
print(typeof(x))
x<-character(5)
print(x)
print(typeof(x))
x<-c('A','b','r','q')
print(x)
print(typeof(x))
x<-vector("integer",length=5)
print(x)
print(typeof(x))
x<-integer(5)
print(x)
print(typeof(x))
x<-c(1,2,3,4,5)
print(x)
print(typeof(x))
x<-seq(from=1,to=5,by=0.1)
print(x)
print(typeof(x))
x<-1:5
print(x)
print(typeof(x))
x<-vector("double",length=5)
print(x)
print(typeof(x))
x<-double(5)
print(x)
print(typeof(x))
x<-c(1.787,0.63573,2.3890)
print(x)
print(typeof(x))
x <- c(1.8)
typeof(x)
x <- c(x,'a')
typeof(x)
x <- c(TRUE)
typeof(x)
x <- c(x,2)
typeof(x)
x <- c('a')
typeof(x)
x <- c(x,TRUE)
typeof(x)
x <- c(1L)
typeof(x)
x <- c(x,2)
typeof(x)
x <- c(1L)
typeof(x)
x <- as.character(x)
typeof(x)
x <- c('A')
typeof(x)
x <- as.numeric(x)
typeof(x)
x <- c(1,10,9,8,1,3,5)
x[3]
x[2:4]
x[c(1,3,5)]
x <- c(1,10,9,8,1,3,5)
x[c(TRUE,FALSE,FALSE,TRUE,FALSE,FALSE,TRUE)]
x[x<10]
print(length(x))
print(typeof(x))
print(str(x))
my_pie = list(type="key lime", diameter=7, is.vegetarian=TRUE)
my_pie
names(my_pie)
my_pie$type
my_pie["type"]
install.packages("openintro")
library(openintro)
library(tidyverse)
glimpse(loans_full_schema)
loans <- loans_full_schema %>% # <-- pipe operator
  select(paid_total, term, interest_rate,
         annual_income,paid_late_fees,debt_to_income)
glimpse(loans)
loans <- loans_full_schema %>%
  select(grade,state,homeownership,disbursement_method)
glimpse(loans)
