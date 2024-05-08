#######################################
#### Intro to R
#######################################
# Set the working directory and libraries
# Setting the working directory lets R know where to load files from and 
# where to save files. Libraries house the functions that we will be using.

## Set working directory
setwd("/Users/dmpa240/OneDrive - University of Kentucky/Documents")

## How to check working directory
getwd()

## Cleaning up the memory
rm(list=ls(all=TRUE))

## Installing Packages
install.packages("tidyverse")
library("tidyverse")


#### Comments
# Anything after a hastag will be ignored by R and treated as a comment.

#####  Basic Arithmetic
#  Addition
1+8

#  Subtraction
10-6

#  Multiplication
5*4

#  Division
9/3

# Exponentiation
pi^2


#### Creating objects and variable assignment
# Assign the value of 4 to a
a <- 4

# Assign the value of 6 to b
b <- 6

# Prints the object a in the console
a

# Prints the object b in the console
b

# Add a and b
a + b

# What happens if you change the value of a? Now, re-add a and b.

## Assignment Operators: <- and =
## https://www.r-bloggers.com/2014/01/difference-between-assignment-operators-in-r/

# How to delete an object
rm(b)


#### Functions
# Square root function
sqrt(a)

## Functions with multiple arguments
# Round function with sungular argument
round(3.14159)

# Take a closer look at the round function with the args function
args(round)

# Find help for the round function
?round

# Round function with number of digits specified
round(3.14159, digits = 2)

# Round function with number of digits specified, arguments not named.
round(3.14159, 2)


#### Vectors and Data Types
# The combine function 
x <- c(1,2,3,4,5,6,7,8,9,10)
# or
X <- c(1:10)

# Vector containing characters
toppings <- c("cheese","cilantro","onions","lime")

# Length of vector
length(toppings)


## Data types
# Type of an object
typeof(toppings)
typeof(x)
typeof(X)
class(toppings)
class(x)

# Structure of an object
str(toppings)
str(x)

# Adding elements to vectors
best_toppings <- c(toppings,"avocado")
best_toppings
print(best_toppings)

## Examples of data types
# 3.14 is a Double (or Numeric)
# "Taco" is a Character
# T or TRUE is a Logical
# 4L is an Integer
# 5 + 2i is Complex


## Subsetting Vectors
# Subsetting/Extracting elements out of a vector
toppings[2]
# or
nth(toppings, n=2) #Note: nth only returns one number (n must only equal one number)

## Conditional Subsetting
# Create a new object 
random_numbers <- c(1,5,8,3,26,1000)

# Assigning T/F to elements 
random_numbers[c(T,T,F,T,F,F)]

# We want to find values greater than 20.
random_numbers > 20

# Values less than 20.
random_numbers < 20

# Values equal to 20.
random_numbers == 20

## Conditionals
# < is "less than"
# <= is "less than or equal to"
# > is "greater than"
# >= is "greater than or equal to"
# == is "equal to"  Note: the single equal sign performs a variable assignment.

## Multiple conditionals joined with & or |
# Values greater than 4 and less than or equal to 8.
random_numbers[random_numbers > 4 & random_numbers <= 8 ]

## Conditional Subsetting with Character data
# toppings that are equal to cheese or tomato
toppings[toppings == "cheese" | toppings == "onions"]

## %in% operator
# Test to see if each element in toppings is equal to "cheese" or "onions" 
toppings %in% c("cheese","onions")
# Test to see if each element in toppings is equal to "cheese",  "pepperoni", 
# "pineapple", or "anchovy"
toppings %in% c("cheese", "pepperoni", "pineapple", "anchovy")
# Same test as above, put prints only the cases that are True.
toppings[toppings %in% c("cheese", "pepperoni", "pineapple", "anchovy")]


which()



