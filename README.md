# Getting and Cleaning Data assignment project
___

This project contains two scripts:

+ get_data.R

      This script get the Samsung data from the remote site and extract its content 
      in the current working directory under *UCI HAR Dataset*.

+ run_analysis.R

      This is the most important script that performs the analysis via the answers 
      to the five assignment questions below
      
      1. Merges the training and the test sets to create one data set.
      
      Create an extra folder under *UCI HAR Dataset* named *all* with the merged dataset. (Delete it if exists)
      The first step is to create a matrix of all possible train, test and merged data file paths.
      This is done with the *expand.grid* function and the use of a utility function to create custom filename. The last step is to use the matrix and rbind to create the merged file version.  
      
      2. Extracts only the measurements on the mean and standard deviation for each measurement.
      
      First read the merged dataset *X.txt* and the list of features from *features.txt*.
      Finish with *grep("mean\\(\\)|std\\(\\)",features)* and subsetting/col. renaming the dataset.
      
      3. Uses descriptive activity names to name the activities in the data set
      
      Read activity names file *activity_labels.txt* and activity data file *y.txt*.
      Convert data activity to factor then apply level with the activity names.
      Finish with adding the new column to dataset.
      
      4. Appropriately labels the data set with descriptive variable names.
      
      This is performed with using the function *gsub* and the following substitution
        
        ```
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
        coln<-gsub("-X$"," X direction ",coln)
        coln<-gsub("-Y$"," Y direction ",coln)
        coln<-gsub("-Z$"," Z direction ",coln)
        ```
      
      5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      
      For this task, I had to reshape the dataset using the package *tidyr* and the gather function in order to move all the variable columns to two key/value column named *variable/value*


