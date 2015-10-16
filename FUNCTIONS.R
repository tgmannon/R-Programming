##FUNCTIONS
add2<- function(x,y) {
        x + y
}

add2(3,5)
[1] 8

##FUNCTION
above<-function(x,n){
        use<-x>n
        x[use]
}

x<-1:20
above(x,12)
[1] 13 14 15 16 17 18 19 20

##function to calculate the mean of each column
columnmean<-function(y,removeNA=TRUE){
        nc<-ncol(y)
        means<-numeric(nc)
        for(i in 1:nc){
                means[i]<-mean(y[,i],na.rm=removeNA)
        }
        means
}
##read in file
hw<-read.csv("hw1_data.csv")
##apply function
columnmean(hw)
[1]  42.129310 185.931507   9.957516  77.882353   6.993464  15.803922


