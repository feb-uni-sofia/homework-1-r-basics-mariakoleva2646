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
diff <-xmax-xmin
diff
avgMin <-mean(xmin)
avgMin
avgMax <-mean(xmax)
avgMax
xmin[xmin<avgMin]
xmin[xmax>avgMax]
names(xmin) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(xmax) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temperatures <- data.frame(xmin,xmax)
temperatures <- within(temperatures, {Fahrenheit<-9/5*xmin + 32})
Fahrenheitnew <- data.frame(fxmin=9/5*xmin +32, fxmax=9/5*xmax + 32)
Fahfivedays <- data.frame (fxmin=xmin[seq(1:5)]*9/5 + 32, fxmax=xmax[seq(1:5)]*9/5 + 32)
Fahfivedays <- data.frame (fxmin=xmin[seq(length(xmin)-2)]*9/5 + 32, fxmax=xmax[seq(length(xmax)-2)]*9/5 + 32)
