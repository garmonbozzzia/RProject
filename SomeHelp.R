
#It's place for code execution 
2+3
##
?install.packages
help("install.packages")
##
##This is just a comment
##
install.packages("swirl")
library(swirl)
swirl()
##
getwd()
##
dat <- read.csv("somedata.csv")
##
install.packages("downloader")
library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename)
dat <- read.csv(filename)
##
install.packages("devtools")
library(devtools)
install_github("genomicsclass/dagdata")
dir <- system.file(package="dagdata") #extracts the location of package
list.files(dir)
list.files(file.path(dir,"extdata")) #external data is in this directory
filename <- file.path(dir,"extdata/femaleMiceWeights.csv")
dat <- read.csv(filename)
##
install.packages("dplyr")
library(dplyr) 
chow <- filter(dat, Diet=="chow")
head(chow)
chowVals <- select(chow,Bodyweight)
head(chowVals)
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight)
chowVals <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
class( chowVals )
chowVals <- dat[ dat$Diet=="chow", colnames(dat)=="Bodyweight"]