# Part 1
# load test data into xte data frame
xte <- read.table("test/X_test.txt")		
# load train data into xtr data frame
xtr <- read.table("train/X_train.txt")		
# merge the two data sets into the data frame x
x <- rbind(xte,xtr)				

# Part 2
# load features into ftr list
ftr <- read.table("features.txt")		
# first column is feature number, second column full feature name
# remove the non-alphanumeric characters from feature names to get descriptive variable names
ftr[,2] <- gsub("[^[:alnum:] ]", "", ftr[,2])	
# find indeces of features on the mean and standard deviation
i <- sort(unique(c(grep("mean",ftr[,2]),grep("std",ftr[,2]),grep("Mean",ftr[,2]))))
# subset the list ftr to contain only mean and std relevant columns to get the vector ftrs
ftrs <- ftr[i,2]
# subset the data frame x to contain only mean and std relevant columns to get the data frame xs
xs <- x[,i]

# Part 3
# load test activity labels into lte list
lte <- read.table("test/y_test.txt")		
# load train activity labels into lte list
ltr <- read.table("train/y_train.txt")		
# merge the two lists into the list l
l <- rbind(lte,ltr)				
# load activity labels into lbl list
lbl <- read.table("activity_labels.txt")		
# remove the non-alphanumeric characters from activity labels and change to lower case to get descriptive label names
lbl[,2] <- tolower(gsub("[^[:alnum:] ]", "", lbl[,2]))
# replace the activities in merged list l with descriptive label names 
act <- matrix(lbl[unlist(l),2])

# Part 4
# load test subject list into ste data list
ste <- read.table("test/subject_test.txt")		
# load train subject list into str data list
str <- read.table("train/subject_train.txt")		
# merge the two lists into the list s
s <- rbind(ste,str)				
# merge the subject list s, the activity list act and data frame xs that contains mean and std data to get the data frame xm
xm <- cbind(s,act,xs);
# label the data frame xm with descriptive variable names
colnames(xm) <- c("subject","activity",ftrs)

# Part 5
# load the plyr package that implements the split-apply-combine pattern
library(plyr)
# for each (subject, activity) subset of the data frame xm split the dataframe, apply mean function accross variables and then combine results into a data frame tidy
tidy <- ddply(xm, .(subject, activity), numcolwise(mean))
# save the tidy data frame to the file tidy.txt; the header line lists variable names; row names are not included
write.table(tidy,"tidy.txt",row.names=FALSE)
