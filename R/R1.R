# R is an Open Source programming language & software environment
# for statistical analysis. representation. data analyst & visualization

# R is Case Sensitive

5+6
5-6

5 * 6
10/5

1:50 #print numbers from 1:50
50:1 #print numbers 50:1 in reverse order
print(50:1)
seq(1,20,by=2)
rep(1,10)
rep(1:5,5)
print("Welcome to R programming")
#variables
length <- 5
width <- 7
Area<- length * width
Area

ctrl+l #to clear console window
# Data Types in R - Vector, List, Matrix, Array, Factor, DataFrame
# vector - contains elements of same class
a = TRUE
a
class(a)
# 2- Numeric
a <- 10
a
class(a)
# - Integer
b <- 2L
b
class(b)
#3 - Character
a<- "Hello"
a
class(a)
# logical vector
a<- c(TRUE, FALSE, TRUE, FALSE)
a
class(a)
a[1,4]
s <- c(1,2L,3L)
s
class(s)
# 2. Numeric vector
b <- c(0.1,2,5.3,4.22,6.-2,4,c(7,8,9))
b
class(b)
g <- c(2L,5L,7L)
g
class(g)
# 3. Integer # whole numbers & not a fraction
h <- c(1L,4L,7L,6.6,4.55,TRUE)
h
class(h)
d <- c(2L, 34, 0L, 'abc')
d
class(d)
# 4. Complex
d<-5+9i
d
class(d)
# 5. Character vector
e <- c("Right now", 'it is', '10:15 am')
e
class(e)

#accessing vector elements by their indexes or subscripts

a
a[1]
a[1:3]
a[c(1,4)]

# a[1:3] != a[c(1,3)]
#List - can contain many different types of elements inside it like vectors.
# functions and even another list inside it

h<- list(23,21.3,c(1,2,3), "hello", TRUE, 3+9i,2L)
h
class(h)
h[1]
h[2]
h[3]
h[3][1]
h[[3]][1]
h[1:3]
g<- c(23,21.3,c(2,5,3), "hello",sin)
g
class(g)
h<-c(23,21.3,c(2,5,3),"hello")
h
class(h)
h<-c(23,21.3,c(2,5,3),"hello", 4+5i, 2L, TRUE)

# matrix - Two dimensional(rows*columns) rectangular data set
# It can be created using a vector input to the matrix function
# The data elements must be of the same type
# all column in a matrix must have the same type of mode (numeric, character, etc.)
# and the same length

i <- matrix(c(10, 20, 30), nrow=3, ncol=2,byrow=FALSE)

#default value of byrow is False
class(i)
i
# Accessing elements of a matrix
i[3,2]
#Array - while matrix are confined to 2 dimensions, arrays can be of any number
#of dimensions.
?array
j <-array(c("R","Programming","session"),dim = c(2,5,4))
j
class(j)
#accessing an Array
j[,,4] #4th array
# Accessing individual element from an array
j[2,4,4] #2nd row 5th column, 4th array

#Factor - Variable which can take certain values(levels) and not any
k <- c("red","green","blue","blue","red","orange")
x <- factor(k)
x
class(x)

# Data Frame
# unlike a matrix in data frame each column can contain different mode of data
# it is a list of vectors of equal length
m<- data.frame(gender = c("Male","Male","Female"), height = c(152,171.5,165),
               weight= c(81,93,67), Age = c(42,38,25))
class(m)
m
View(m)

#accessing column / features of data frame
m[3]
# Accessing elements of a data frame
m$height
m$gender
m$gender[3]
m[2]
m[[2]]
m[[2]][2]
m[c(1,2), c(2,3)] # accessing multiple items from a data frame
m[2,]
# End of Data types

# variables or objects in R
#valid
var_name2. <-1
.var_name <- 2 #hidden variable will not appear in enviroment
var.name <- 3
#invalid

#assignment using leftward operator
var.1 <- c("R", "Programming")
var.1
#assignment using rightward operator
c(TRUE,1) -> var.2
var.2
#Assignment using equal operator
var.3 = c(0,1,2,3)
var.3
# Finding variables in Environment
?ls
ls()
a<-3

ls(pattern = "var") #displays variable which var text in it
ls(all.name=TRUE) # also display hidden starting with .) variables

#Deleting variable
rm(a)
#end of Variables

#operators in R
# 5= Arthimatic,

13%%4
13%/%4
2^3

# Relational operators -returns boolean values
q <- c(1, 3, 4, 3, 2)
r <- c(2, 4, 4, 5, 2)
# 1. > greater than
q[1] > r[2]

# 2. < lesser than
q<r

# 3. == equal to
q == r

# 4. >= greater than or equal to
q<=r
q>=r

# 5. != not equal to
q!=r

# Logical Operators
# condition: all numbers greater than 1 are considered as logical value TRUE
s <- c(0, 1, TRUE, 2+2i)
t <- c(4, 1, FALSE, 2+3i)
#1. & Element wise Logical AND
s&t
#2. | Element wise Logical OR
s|t
#3. ! Logical Not - can be applied on a single vector
!(s&t)
!(s|t)
# logical operators (&& || considers only 1st element of the vectors and give a vector of
# single element as output)
# 4. && logical AND
u <- c(3, 0, TRUE, 2+2i)
v <- c(1, 3, TRUE, 2+3i)
u&&v
# 5. || Logical OR
x <- c(0,0,TRUE,2+2i)
y <- c(0,3,TRUE,2+3i)
x||y

# Assignment Operators
# 1. Left Assignment <- or == or <<-
# 1. : Colon operator - It created the series of numbers in sequence for a vector

v6<-1.3:10:3
v6
# 2. %in% - an element belongs to a vector
v7<- c(8,9,10)
v8<- c(12,13,14)
t<-1:10
v7%in%t
v8%in% t
#3. %*%- Multiply a matrix with its transpose
v9 <- matrix(c(2,6,5,1,10,4), nrow = 2,ncol = 3,byrow = TRUE)
v9
t(v9)
v9t <- v9 %*% t(v9)
v9t
# End of Operators