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
      This is done with the *expand.grid* function and the use of a utility function to create custom filename. The last step is to use the matrix and rbind to generate the merged file version.  
      
      2. Extracts only the measurements on the mean and standard deviation for each measurement.
      
      First read the merged dataset *X.txt* and the list of features from *features.txt*.
      Then perform a grep on *mean() OR std()* as these will return variables needed to answer this question. Note that I choose not to include mean/std in the middle of variable name as I think there are not relevant. The code looks like this 
      ```
      grep("mean\\(\\)|std\\(\\)",features)
      
      ```
      The last step is to subset and rename the dataset.
      
      3. Uses descriptive activity names to name the activities in the data set
      
      Read activity names file *activity_labels.txt* and activity data file *y.txt*.
      Convert data activity to factor then apply level with the activity names.
      Finish by adding the new factor column to the dataset.
      
      4. Appropriately labels the data set with descriptive variable names.
      
      This is performed by using the function *gsub* and the following substitution
        
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
        coln<-gsub("-X$"," x direction ",coln)
        coln<-gsub("-Y$"," y direction ",coln)
        coln<-gsub("-Z$"," z direction ",coln)
        ```
        Note that a string trim followed by substitution of spaces by underscore is also done to produce tidy variable names
      
      5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      
      For this task, I had to reshape the dataset using the function *gather* from package *tidyr* in order to move all the variable columns to two key/value columns named *variable/value*. The final aggregation is performed with the *summarize* function of *dplayr* package. After spreading the *variable/value* columns back to columns variable, I get the final tidy dataset.
      The final dataset is saved in a file named *tidy_dataset.txt* and can be read with the following code
      
      ```
      
      read.table("tidy_dataset.txt",header=T)
      
      
      ```
      


