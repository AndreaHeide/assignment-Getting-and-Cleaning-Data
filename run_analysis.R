## Script 'run_anaysis.R' to perform the analysis

## Task 1: Merge the training and the test sets to create one data set.

## a) Check/create directory, download file and unzip 

if (dir.exists("./activity_data") == FALSE) {dir.create("./activity_data")}

file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(file_url, destfile = "./activity_data/dataset.zip", method = "curl", mode="wb")
setwd("./activity_data")
unzip("dataset.zip")

## b) Read raw data 

## Read training and test set
training_data <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

## Read subjects and training labels 
subjects_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subjects_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

training_labels <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

## Read activities 
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

## Read features (features are column names)
column_names <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)


## c) Combine data

## set column names from file "features"
## remark: training and test separate for binding subject and labels
library(data.table) 

for (i in 1:as.integer(ncol(training_data))) {names(training_data)[i] <- as.character(column_names[i, 2])}
for (i in 1:as.integer(ncol(test_data))) {names(test_data)[i] <- as.character(column_names[i, 2])}

## add subjects to training and test datasets (measurements), cbind (same number of rows), 
## name column before adding
names(subjects_train) <- "subject"
names(subjects_test) <- "subject"
training_data_2 <- cbind(training_data, subjects_train)
test_data_2 <- cbind(test_data, subjects_test)

## add activity labels to training and test datasets (measurements), cbind (same number of rows)
## name column before adding
names(training_labels) <- "activity"
names(test_labels) <- "activity"
training_data_3 <- cbind(training_data_2, training_labels)
test_data_3 <- cbind(test_data_2, test_labels)

## combine training and test data sets, rbind (same number of columns)
combined_data <- rbind(training_data_3, test_data_3)


## Task 2: Extract only the measurements on the mean and standard deviation for each measurement.

## a) relevant columns = all columns with "mean" or "dev" in their name (choice made to include all, see also README)
relevant_columns <- grep(pattern = "[Mm]ean|[Ss]td", x = names(combined_data), value = TRUE)

## b) keep only relevant columns = make new dataframe with subject, label + relevant columns
relevant_data <- combined_data[, c("subject", "activity", relevant_columns)]


## Task 3: Use descriptive activity names to name the activities in the data set:

## decode activities to text with information from "activity labels" file 
## (replace id number by real name, this leads to descriptive activity names)
for (i in 1:as.integer(nrow(activities))){
        relevant_data$activity[which(relevant_data$activity == i)] <- as.character(activities[i,2])
}


## Task 4. Appropriately label the data set with descriptive variable names.
## using gsub, replace some of the abbreviations in the column names for more descriptive, comprehensible names:
## note: this was a tip a recieved from an internet forum
names(relevant_data)<-gsub("^t", "time", names(relevant_data))
names(relevant_data)<-gsub("^f", "frequency", names(relevant_data))
names(relevant_data)<-gsub("Acc", "Accelerometer", names(relevant_data))
names(relevant_data)<-gsub("Gyro", "Gyroscope", names(relevant_data))
names(relevant_data)<-gsub("Mag", "Magnitude", names(relevant_data))
names(relevant_data)<-gsub("BodyBody", "Body", names(relevant_data))




##5. From the data set in step 4, create a second, independent tidy data set 
##with the average of each variable for each activity and each subject.

## using plyr command aggregate

library(plyr)

tidy_data<-aggregate(. ~subject + activity, relevant_data, mean)

## order by subject and activity (each subject has to do each activity)
tidy_data<-tidy_data[order(tidy_data$subject,tidy_data$activity),]


## Write tidy data set to file:

## file tidy_data.txt can be read into R with read.table(header=TRUE) 

