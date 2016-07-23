# Cleaning and Reshaping the data

## This script perform the 5 operations requested for this analysis
## Author: MLCODER


# path to Samsung data folder
data_path<-"./UCI HAR Dataset"

### 1. Merges the training and the test sets to create one data set.

# Utility function to build custom file name
get_file_path<-function(block=c(),   # Blocks that make up the file name
                        parent=c(),  # vector string of parent folders
                        suffix="",   # file name suffix, e.g. train
                        format="txt")# default to txt
{
        file<-paste(block,collapse = "_")
        file<-paste(paste(parent,collapse="/"),file,sep = "/")
        if(suffix!="") file<-paste(file,suffix,sep = "_")
        file<-paste(file,format,sep = ".")
}

# Process "Inertial Signals" files
d<-expand.grid(c("body","total"),c("acc","gyro"),c("x","y","z"))
sub_folder<-"Inertial Signals"
signal_files<-apply(d, 1, function(row){
        test_file<-get_file_path(row,c(data_path,"test",sub_folder),"test")
        train_file<-get_file_path(row,c(data_path,"train",sub_folder),"train")
        all_file<-get_file_path(row,c(data_path,"all",sub_folder))
        c(test_file,train_file,all_file)
})

# Process data files
data_files<-sapply(c("subject","X","y"), function(i){
        test_file<-get_file_path(i,c(data_path,"test"),"test")
        train_file<-get_file_path(i,c(data_path,"train"),"train")
        all_file<-get_file_path(i,c(data_path,"all"))
        
        c(test_file,train_file,all_file)
})

# Matrix that stores the triplets: test, train and merged file paths
change_files<-cbind(signal_files,data_files)

# Make sure that the merged data directory exist and is empty
all_data_path<-paste(data_path,"all",sep = "/")
if(dir.exists(all_data_path)){
        unlink(all_data_path,recursive=T)
}
dir.create(all_data_path)
# Create "Inertial Signals"
dir.create(paste(all_data_path,sub_folder,sep = "/"))

# Do the merge here...
apply(change_files,2,function(column){
        # Make sure the file exist first (some generated filenames doesn't exist)
        if(file.exists(column[1])){
                write.table(
                        rbind(
                                read.table(column[1],header = FALSE),
                                read.table(column[2],header = FALSE)),
                        file = column[3],
                        row.names = F, 
                        col.names = F)
        }
})

### 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Read merged dataset
all_data<-read.table(paste(all_data_path,"X.txt",sep = "/"))
# Read list of feature names
features<-read.table(paste(data_path,"features.txt",sep = "/"))[,2]
features<-as.vector(features)
# Find mean() and std() items
mean_std_idx<-grep("mean\\(\\)|std\\(\\)",features)
# Subsetting and col renaming the dataset
all_data<-all_data[,mean_std_idx]
colnames(all_data)<-features[mean_std_idx]

### 3. Uses descriptive activity names to name the activities in the data set

# Read data labels and activity names
activity_name<-as.vector(read.table(paste(all_data_path,"y.txt",sep = "/"))[,1])
activity_levels<-read.table(paste(data_path,"activity_labels.txt",sep = "/"))
# Create factor variable and assign levels as descriptive activity names
activity_name<-factor(activity_name)
levels(activity_name)<-tolower(activity_levels$V2)
# Add activity column to data set
all_data<-cbind(activity_name,all_data)

### 4. Appropriately labels the data set with descriptive variable names.
library("stringr")
# Read and add subject column to data set
subject<-as.factor(read.table(paste(all_data_path,"subject.txt",sep = "/"))[,1])
all_data<-cbind(subject,all_data)
# Renaming variable names
coln<-colnames(all_data)
coln<-gsub("^t"," time ",coln)
coln<-gsub("^f"," frequency domain signals ",coln)
coln<-gsub("Body"," body ",coln)
coln<-gsub("Gravity"," gravity ",coln)
coln<-gsub("Gyro"," gyroscope ",coln)
coln<-gsub("Acc"," accelerometer ",coln)
coln<-gsub("Jerk"," jerk signals ",coln)
coln<-gsub("Mag"," euclidean norm ",coln)
coln<-gsub("-mean\\(\\)"," mean value ",coln)
coln<-gsub("-std\\(\\)"," standard deviation ",coln)
coln<-gsub("-X$"," x direction ",coln)
coln<-gsub("-Y$"," y direction ",coln)
coln<-gsub("-Z$"," z direction ",coln)
coln<-str_trim(coln)
coln<-gsub(" +","_",coln)
coln<-tolower(coln)
# Rename the dataset columns now
colnames(all_data)<-coln

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
###    each variable for each activity and each subject.

library(tidyr)
library(dplyr)
grouped_data<-
# Reshape the dataset
all_data %>% gather(variable,value,-subject,-activity_name) %>% 
# Summarize the value by subject/activity/variable
group_by(subject,activity_name,variable) %>% 
summarise(average=mean(value))
grouped_data<-spread(grouped_data,variable,average)
# Save the final dataset in the current working directory
write.table(grouped_data,"tidy_dataset.txt",row.name=FALSE)
