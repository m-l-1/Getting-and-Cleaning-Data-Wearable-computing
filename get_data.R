# Getting the data

## This script get the archived Samsung data from the remote site, 
## save it in the working directory 
## and extract its files.
## Author: MLCODER

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","./data.zip")
unzip("./data.zip")
