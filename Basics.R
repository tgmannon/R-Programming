
##get directory
getwd()

##set directory
setwd("C:/Users/Owner/Desktop/Coursera") #home
setwd("C:/Users/TGMANNON/Desktop/Coursera/R_Programming") #wo

##read.csv
hw<-read.csv("C:/Users/Owner/Desktop/Coursera/hw1_data.csv")
hw<-read.csv("hw1_data.csv")

##read in directory of files
files<-list.files("specdata")
files

##read in directory of files, and list out full names of files
files_full <- list.files("specdata",full.names=TRUE)
files_full

##read in specific file out of directory
file001<-read.csv("specdata/001.csv") ##read specific file
head(file001) #print "Heading" of file
tail(file001) #print "tail" of file
print(file001) #print complete file
length(file001$Date) #check how many rows of dates



##extract specific row,for column hw[ ,3]
hw[45,]
Ozone Solar.R Wind Temp Month Day
45    NA     332 13.8   80     6  14

##extract more than 1 specific rows
hw[c(1, 2),]
Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2

##extract column with name
hw["Ozone"]
Ozone
1      41
2      36
3      12
4      18
5      NA
6      28

##create dataset(x) out of "Ozone" column
x<-hw["Ozone"]

##create dataset (A) from column (1) 
A<-hw[ ,1]

##Create new dataset(B) without missing data from dataset(A)
B<-na.omit(A)

##mean of Ozone (column 1)
mean(B)

##extract specific variable strings
hw[hw$Month == "6", ]

##create new dataset(month) of specific variable strings
month<-hw[hw$Month == "6", ]

##create new dataset(C) of muli variable strings (ozone >31 & temp >90)
C<-hw[ which(hw$Ozone>31 & hw$Temp>90),]









