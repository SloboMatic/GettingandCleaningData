### Getting and Cleaning Data Course Project

This repo contains following files:
- run_analysis.R script that cleans and process the data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
- CodeBook.md file that explains the variables, the original data, and transformations performed
- README.md file (this file) that explains the run_analysis.R script functionality

The run_analysis.R script does the following:
- Part 1
It loads test and train data into data frames. It merge the two data sets into the data frame x.
- Part 2
It loads features into a list, removes the non-alphanumeric characters from feature names to get descriptive variable names. Then it finds indeces of features related to the mean and standard deviation and subsets the data frame x to contain only respective variables.
- Part 3
It loads test and train activity labels and merge them into a single list l. It loads activity labels into a list and removes the non-alphanumeric characters from activity labels and changes characters to lower case to get descriptive label names. Finally, it replaces the activities in merged list l with descriptive label names.
- Part 4
It loads test and train subject lists and merges the two lists into the list s. It then merges the subject list s, the activity list l and data frame xs that contains mean and std data to get the data frame xm. It appropriately labels the data set with descriptive variable names. 
- Part 5
For each (subject, activity) subset of the data frame xm it splits the dataframe, applies mean function accross variables and then combines results into a data frame tidy. The ddply function from the plyr package is used. Finally, the script saves the tidy data frame to the file tidy.txt. There is a header line with variable names, but row names are not included.






