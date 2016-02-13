########################################################################################################## Coursera Getting and Cleaning Data Final Course Project
## Author:  Roy Sheppard

# run_analysis.R File Description:

# This script will perform several tasks to create tidydata on the UCI HAR Dataset downloaded from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# The assumption is that you have unziped the file and are running the file
# from the UCI HAR Dataset directory.  The directory has two sub-directories train and test.
# The directory contains features.txt and activities_labels.txt.  
#
# There is a sub-directoery called test that contains the following files:
#		1) subject_text.txt
#		2) x_test.txt
#		3) y_test.txt
#
#	There is a sub-directoery caledl train that contains the following files:
#		1) subject_train.txt
#		2) x_train.txt
#		3) y_train.txt 



#  Assignment requirements
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

#########
#
#  Function run_analysis
#
#########
run_analysis <- function() {

	# Clean up workspace
	rm(list=ls())


	## set workding directory 
	##	setwd("/Users/roysheppard/Documents/education/Getting and Cleaning Data/finalprojecgt/UCI HAR Dataset")

	## Load library "reshape2" required for function melt
	library(reshape2)

	print("Loading data")
	## Load the data files
	## Human Activity Recognition Using Smartphones Dataset	

	print("Loading activity labels")
	## Load activity labels - Uses descriptive activity names to name the activities in the data set
	activityLabels <- read.table("./activity_labels.txt")
	activityLabels[,2] <- as.character(activityLabels[,2])

	print("Loading features")
	##Load featiures
	features <- read.table("./features.txt")
	features[,2] <- as.character(features[,2])


	## Extract only the mean and standard deviation data
	requiredFeatures <- grep(".*mean.*|.*std.*", features[,2])
	requiredFeatures.names <- features[requiredFeatures,2]

	print("Loading training data")
	## Load the training data
	trainX <- read.table("./train/X_train.txt")[requiredFeatures]
	trainY <- read.table("./train/Y_train.txt")
	trainSubjects <- read.table("./train/subject_train.txt")
	train <- cbind(trainSubjects, trainY, trainX)

	print("Loading test data")
#	Loading test data 
	testX <- read.table("./test/X_test.txt")[requiredFeatures]
	testY <- read.table("./test/Y_test.txt")
	testSubjects <- read.table("./test/subject_test.txt")
	test <- cbind(testSubjects, testY, testX)

	print("Setting descriptiove labels")
	## Modigy the features labels 
	## The project asks for good label names.  I am removing the - in front of both mean and std
	## I am removing the () altogether 
	requiredFeatures.names <- gsub('-mean', 'Mean', requiredFeatures.names)
	requiredFeatures.names <- gsub('-std', 'Std', requiredFeatures.names)
	requiredFeatures.names <- gsub('[-()]', '', requiredFeatures.names)

	## Adding more descriptive names for the avvereviaions.
	requiredFeatures.names <-gsub("^t", "time", requiredFeatures.names )
	requiredFeatures.names <-gsub("^f", "frequency", requiredFeatures.names )
	requiredFeatures.names <-gsub("Acc", "Accelerometer", requiredFeatures.names )
	requiredFeatures.names <-gsub("Gyro", "Gyroscope", requiredFeatures.names )
	requiredFeatures.names <-gsub("Mag", "Magnitude", requiredFeatures.names )
	requiredFeatures.names <-gsub("BodyBody", "Body", requiredFeatures.names )

	print("1. Merging training and test data")
	# 1. Merge the training and the test to create one data set and add labels.
	mergedData <- rbind(train, test)


	colnames(mergedData) <- c("subject", "activity", requiredFeatures.names)


#print(c("subject", "activity", requiredFeatures.names))

	## turn activities & subjects into factors
	mergedData$activity <- factor(mergedData$activity, levels = activityLabels[,1], labels = 			activityLabels[,2])
	mergedData$subject <- as.factor(mergedData$subject)
	mergedData.melted <- melt(mergedData, id = c("subject", "activity"))
	mergedData.mean <- dcast(mergedData.melted, subject + activity ~ variable, mean)

	## Write out the tidy data set
	write.table(mergedData.mean, "summaryHumanActivity.txt", row.names=FALSE, sep=' ', quote=FALSE)
	
	##write ouyt the tidy data set in csv format so I can reciew the data in excel
	##write.csv(mergedData.mean, "summaryHumanActivity.csv", row.names=FALSE)
}

