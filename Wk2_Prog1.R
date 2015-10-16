##week 2 Programming Assignment 1: Air Pollution


##part 1: write a function named pollutantmean that calculates the mean of 
#       a pollutant (sulfate or Nitrate) across a specified list of monitors.

setwd("C:/Users/TGMANNON/Desktop/Coursera/R_Programming")

files<-list.files("specdata") ##read in files
files ##print file names




pollutantmean<-function(specdata, pollutant, id=1:332){
        id<-nobs
        files_list<-list.files(specdata, full.names=TRUE)
        air_qlty<-data.frame()
        for (i in 1:332) {
                data<-rbind(air_qlty, read.csv(files_list(i)))
        }
        mean(air_qlty[,"pollutant"], na.rm=TRUE)
}
mean(pollutantmean, trim=FALSE, na.rm=TRUE)


