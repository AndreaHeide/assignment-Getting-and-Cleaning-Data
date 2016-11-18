---
title: "README"
author: "Andrea Heide"
date: "18 November 2016"
output: html_document
---

## Script 'run_anaysis.R'
## The script 'run_anaysis.R' downloads, reads, combines and transforms the data from the set given in the assignment to create a tidy dataset.
## There is also a code book (CodeBook.md) for more information on the tidy data set

## The script performs the 5 tasks as set in the assignement.

## Task 1: Merge the training and the test sets to create one data set.

## a) Check/create directory, download file and unzip 

## b) Read raw data from text files into data frames:
## - training data into data frame training_data
## - test_data into data frame test_data
## - training subjects into data frame subjects_train
## - test subjects into data frame subjects_test
## - training labels into data frame training_labels
## - test labels into data frame test_labels 
## - activity labels into data frame activities
## - features into data frame column_names

## c) Combine data into one data frame
## Set column names from file "features" (data frame column_names)
## Remark: training and test dataframes are kept separate to be able to bind subject and labels correctly
## Add subjects to training and test datasets with cbind (data frames training_data_2, test_data_2), columns are named before adding
## Add activity labels to training and test datasets with cbind (data frames training_data_3, test_data_3), columns are named before adding
## Then combine training and test data sets with rbind into data frame combined_data

## Task 2: Extract only the measurements on the mean and standard deviation for each measurement.

## a) Define relevant columns = all columns with "mean" or "dev" in their name (at any position), in list relevant_columns
## The choice was made to rather inlcude too much data than to risk to leave out important data

## b) Keep only the relevant columns: create new dataframe relevant_data with subject, label + relevant columns

## Task 3: Use descriptive activity names to name the activities in the data set:

## decode activities to text with information from "activity labels" file 
## (replace id number by real name, this leads to descriptive activity names)

## Task 4. Appropriately label the data set with descriptive variable names.

## using gsub,the abbreviations in the column names are replaced by full text for more descriptive, comprehensible names

## Task 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject:

## plyr is used to aggregate and order data by subject and label with function mean into data frame tidy_data

## The script then writes the tidy data set to the file tidy_data.txt

## Read the tidy data set: 
## The file tidy_data.txt can be read into R using the following commands:
## data <- read.table(file-Path, header=TRUE) 
## View(data)



## with many thanks to https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/ 

## Data source:
## Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for ##Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, ##Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

