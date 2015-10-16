##practice assignment

##download and unzip file
dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")

##get files
list.files("diet_data")

##looks inside file
andy <- read.csv("diet_data/Andy.csv")
head(andy)

#how many rows?
length(andy$Day)

##dimensions of dataframe?
dim(andy)

#other commands to view data
str(andy)
summary(andy)
names(andy)

##andy's starting weight:
andy[1, "Weight"]
 
##andy's final weight:
andy[30, "Weight"]

## subset of weight column for day 30's only:
andy[which(andy$Day == 30), "Weight"]
##or
andy[which(andy[,"Day"] == 30), "Weight"]
##or
subset(andy$Weight, andy$Day==30)

##assign starting and ending weight to vectors:
andy_start <- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]

##find out total loss by subtracting the vectors:
andy_loss <- andy_start - andy_end
andy_loss

##store output of list.files()
files <- list.files("diet_data")
files

##prepend file with full names:
files_full <- list.files("diet_data", full.names=TRUE)
files_full

##look at the 3rd file
head(read.csv(files_full[3]))

##Rbind two files together
andy_david <- rbind(andy, read.csv(files_full[2]))
##check 
head(andy_david)
tail(andy_david)

##create a subset of data frame for 25th day for andy and david:
day_25 <- andy_david[which(andy_david$Day == 25), ]
day_25

##loop
for (i in 1:5) {print(i)}

##create an empty dataframe to load files into:
dat <- data.frame()
for (i in 1:5) {
        dat <- rbind(dat, read.csv(files_full[i]))
}
str(dat)

##view new file(dat)
dat

#find median weight:
median(dat$Weight)
        ##this fails because there are Na values in dataframe
median(dat$Weight, na.rm=TRUE)
        ##remove na values
##find the median weight of day 30: (subset)
dat_30 <- dat[which(dat[, "Day"] == 30),]
dat_30
median(dat_30$Weight)

##create a function that will return the median weight of a given day.
## 1.define directory
weightmedian <- function(directory, day) { # content of the function }
##2.add content:
        weightmedian <- function(directory, day)  {
                files_list <- list.files(directory, full.names=TRUE)   #creates a list of files
                dat <- data.frame()                             #creates an empty data frame
                for (i in 1:5) {                                
                        #loops through the files, rbinding them together 
                        dat <- rbind(dat, read.csv(files_list[i]))
                }
                dat_subset <- dat[which(dat[, "Day"] == day),]  #subsets the rows that match the 'day' argument
                median(dat_subset[, "Weight"], na.rm=TRUE)      #identifies the median weight 
                #while stripping out the NAs
        }
        
##all together:
        weightmedian <- function(directory, day)  {
                files_list <- list.files(directory, full.names=TRUE)
                dat <- data.frame() 
                for (i in 1:5) {                                
                        dat <- rbind(dat, read.csv(files_list[i]))
                }
                dat_subset <- dat[which(dat[, "Day"] == day),]  
                median(dat_subset[, "Weight"], na.rm=TRUE) 
        }

##check results:
        weightmedian(directory = "diet_data", day = 20)
        weightmedian("diet_data", 4)
        weightmedian("diet_data", 17)
