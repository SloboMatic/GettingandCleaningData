### Codebook for the Getting and Cleaning Data Course Project

The data uploaded in the tidy.txt file is the data processed from the raw accelerometer and gyroscope data obtained with Samsung Galaxy S smartphones. 
Various accelerometer and gyroscope data was collected for a set of 30 subjects while they excercised 6 different activities.
The original raw data and related codebook can be downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The tidy data set is a data frame in the textual format where data is separated by ' ' symbol.
The first row of the file is a header row with the names of variables (please see the list at the bottom of this file).
There are 180 observations.
Each observation (row) corresponds to a unique (subject, activity) pair.

The set of variables (column) was derived from the set of variables in the orignal raw data set.
Only the measurements on the mean and standard deviation were extracted.
Thus, only those original variables that in their name contain either of the strings "mean", "std" or "Mean" were selected for the tidy data set. There are 86 such variables. 
The variable labels are generated from the variable names in the original data set by extracting only the alphanumeric characters. 
The measurements units are the same units as used in the orignal data.
The first column contains the subject identifier and the second column contains activity labels for all observations.
Thus, there are 88 columns in the data set whose names are listed below.
The types of first two columns are character (string), the rest are double.

For each variable the value in the tidy data set represents the average computed for each activity and each subject.

Variable list:
"subject" "activity" "tBodyAccmeanX" "tBodyAccmeanY" "tBodyAccmeanZ" "tBodyAccstdX" "tBodyAccstdY" "tBodyAccstdZ" "tGravityAccmeanX" "tGravityAccmeanY" "tGravityAccmeanZ" "tGravityAccstdX" "tGravityAccstdY" "tGravityAccstdZ" "tBodyAccJerkmeanX" "tBodyAccJerkmeanY" "tBodyAccJerkmeanZ" "tBodyAccJerkstdX" "tBodyAccJerkstdY" "tBodyAccJerkstdZ" "tBodyGyromeanX" "tBodyGyromeanY" "tBodyGyromeanZ" "tBodyGyrostdX" "tBodyGyrostdY" "tBodyGyrostdZ" "tBodyGyroJerkmeanX" "tBodyGyroJerkmeanY" "tBodyGyroJerkmeanZ" "tBodyGyroJerkstdX" "tBodyGyroJerkstdY" "tBodyGyroJerkstdZ" "tBodyAccMagmean" "tBodyAccMagstd" "tGravityAccMagmean" "tGravityAccMagstd" "tBodyAccJerkMagmean" "tBodyAccJerkMagstd" "tBodyGyroMagmean" "tBodyGyroMagstd" "tBodyGyroJerkMagmean" "tBodyGyroJerkMagstd" "fBodyAccmeanX" "fBodyAccmeanY" "fBodyAccmeanZ" "fBodyAccstdX" "fBodyAccstdY" "fBodyAccstdZ" "fBodyAccmeanFreqX" "fBodyAccmeanFreqY" "fBodyAccmeanFreqZ" "fBodyAccJerkmeanX" "fBodyAccJerkmeanY" "fBodyAccJerkmeanZ" "fBodyAccJerkstdX" "fBodyAccJerkstdY" "fBodyAccJerkstdZ" "fBodyAccJerkmeanFreqX" "fBodyAccJerkmeanFreqY" "fBodyAccJerkmeanFreqZ" "fBodyGyromeanX" "fBodyGyromeanY" "fBodyGyromeanZ" "fBodyGyrostdX" "fBodyGyrostdY" "fBodyGyrostdZ" "fBodyGyromeanFreqX" "fBodyGyromeanFreqY" "fBodyGyromeanFreqZ" "fBodyAccMagmean" "fBodyAccMagstd" "fBodyAccMagmeanFreq" "fBodyBodyAccJerkMagmean" "fBodyBodyAccJerkMagstd" "fBodyBodyAccJerkMagmeanFreq" "fBodyBodyGyroMagmean" "fBodyBodyGyroMagstd" "fBodyBodyGyroMagmeanFreq" "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagstd" "fBodyBodyGyroJerkMagmeanFreq" "angletBodyAccMeangravity" "angletBodyAccJerkMeangravityMean" "angletBodyGyroMeangravityMean" "angletBodyGyroJerkMeangravityMean" "angleXgravityMean" "angleYgravityMean" "angleZgravityMean"


