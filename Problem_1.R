## WARNING: use the files Problem_1.R, Problem_2.R, etc. to write your 
## solution otherwise your homework/exam will not be reviewed and will not be graded at all.

## Use comments like a), b) to show which part of the problem  
## you are referring to with your code 

## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.
## Do not leave blanks before paranthesis, e.g.
## BAD: data.frame (x, y)
## GOOTD: data.frame(x, y)

x <- c(4,1,1,4)
x
y <- c(1,4)
y
x-y
#The two vectors are with different size so the second vector "y" becomes (1,4,1,4)
s <- c(x,y)
s
rep(s,10)
ss <- rep(s,10)
length(ss)
rep(s,each=3)
seq(from=7,to=21,by=1)
7:21
p <- seq(7,21,by=1)
length(p)


xmin <- c(23,20.5,28.2,20.3,22.4,17.2,18.2)
xmin
xmax <- c(25,22.8,31.2,27.3,28.4,20.2,24.1)
xmax

## 
diff <-xmax-xmin

## NOTE: do not assign to built-in object like diff. To see what diff normally does, run
?diff


diff
avgMin <-mean(xmin)
avgMin
avgMax <-mean(xmax)
avgMax
xmin[xmin<avgMin]
xmin[xmax>avgMax]

## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(xmax) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temperatures <- data.frame(xmin,xmax)

temperatures <- within(temperatures, {
	Fahrenheit<-9/5*xmin + 32
})

Fahrenheitnew <- data.frame(fxmin=9/5*xmin +32, fxmax=9/5*xmax + 32)
Fahfivedays <- data.frame (fxmin=xmin[seq(1:5)]*9/5 + 32, fxmax=xmax[seq(1:5)]*9/5 + 32)
Fahfivedays <- data.frame (fxmin=xmin[seq(length(xmin)-2)]*9/5 + 32, fxmax=xmax[seq(length(xmax)-2)]*9/5 + 32)

## Easier: 
temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]
