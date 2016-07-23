# Getting the data

## This script get the archived Samsung data from the remote site, 
## save it in a sub-folder named data (create it if necessary) 
## and extract the files.
## Author: MLCODER

if(!dir.exists("./data"))
        dir.create("./data")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./data/data.zip")
unzip("./data/data.zip",exdir = "./data/")
