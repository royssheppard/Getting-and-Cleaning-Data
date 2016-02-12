### CodeBook for Class Getting and Cleaning Data Final Course Project
* Human activity data 

###Prepared by 
* Roy Sheppard

###Data file name
* summaryHumanActivity.txt

###Source data  
* Human Activity Recoginition Using Smart Phone detailed data set description:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

* Data collected by Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012. 
* Original data set:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   


##Notes from site on how data obtained: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

##License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

###Files used to create summaryHumanActivity.txt

       *  features.txt: List of all features.
       *  activity_labels.txt: Links the class labels with their activity name.
       *  train/X_train.txt: Training set.
       *  train/y_train.txt: Training labels.
       *  test/X_test.txt: Test set.
       *  test/y_test.txt: Test labels.
       *  train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
       *  test/subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

### summaryHumanActivity.txt Data Variable Names 
       *  subject  
       *  activity  
       *  timeBodyAccelerometerMeanX         *  timeBodyAccelerometerMeanY         *  timeBodyAccelerometerMeanZ         *  timeBodyAccelerometerStdX         *  timeBodyAccelerometerStdY         *  timeBodyAccelerometerStdZ         *  timeGravityAccelerometerMeanX         *  timeGravityAccelerometerMeanY         *  timeGravityAccelerometerMeanZ         *  timeGravityAccelerometerStdX         *  timeGravityAccelerometerStdY         *  timeGravityAccelerometerStdZ         *  timeBodyAccelerometerJerkMeanX         *  timeBodyAccelerometerJerkMeanY         *  timeBodyAccelerometerJerkMeanZ         *  timeBodyAccelerometerJerkStdX         *  timeBodyAccelerometerJerkStdY         *  timeBodyAccelerometerJerkStdZ         *  timeBodyGyroscopeMeanX         *  timeBodyGyroscopeMeanY         *  timeBodyGyroscopeMeanZ         *  timeBodyGyroscopeStdX         *  timeBodyGyroscopeStdY         *  timeBodyGyroscopeStdZ         *  timeBodyGyroscopeJerkMeanX         *  timeBodyGyroscopeJerkMeanY         *  timeBodyGyroscopeJerkMeanZ         *  timeBodyGyroscopeJerkStdX         *  timeBodyGyroscopeJerkStdY         *  timeBodyGyroscopeJerkStdZ         *  timeBodyAccelerometerMagnitudeMean         *  timeBodyAccelerometerMagnitudeStd         *  timeGravityAccelerometerMagnitudeMean         *  timeGravityAccelerometerMagnitudeStd         *  timeBodyAccelerometerJerkMagnitudeMean         *  timeBodyAccelerometerJerkMagnitudeStd         *  timeBodyGyroscopeMagnitudeMean         *  timeBodyGyroscopeMagnitudeStd         *  timeBodyGyroscopeJerkMagnitudeMean         *  timeBodyGyroscopeJerkMagnitudeStd         *  frequencyBodyAccelerometerMeanX         *  frequencyBodyAccelerometerMeanY         *  frequencyBodyAccelerometerMeanZ         *  frequencyBodyAccelerometerStdX         *  frequencyBodyAccelerometerStdY         *  frequencyBodyAccelerometerStdZ         *  frequencyBodyAccelerometerMeanFreqX         *  frequencyBodyAccelerometerMeanFreqY         *  frequencyBodyAccelerometerMeanFreqZ         *  frequencyBodyAccelerometerJerkMeanX         *  frequencyBodyAccelerometerJerkMeanY         *  frequencyBodyAccelerometerJerkMeanZ         *  frequencyBodyAccelerometerJerkStdX         *  frequencyBodyAccelerometerJerkStdY         *  frequencyBodyAccelerometerJerkStdZ         *  frequencyBodyAccelerometerJerkMeanFreqX         *  frequencyBodyAccelerometerJerkMeanFreqY         *  frequencyBodyAccelerometerJerkMeanFreqZ         *  frequencyBodyGyroscopeMeanX         *  frequencyBodyGyroscopeMeanY         *  frequencyBodyGyroscopeMeanZ         *  frequencyBodyGyroscopeStdX         *  frequencyBodyGyroscopeStdY         *  frequencyBodyGyroscopeStdZ         *  frequencyBodyGyroscopeMeanFreqX         *  frequencyBodyGyroscopeMeanFreqY         *  frequencyBodyGyroscopeMeanFreqZ         *  frequencyBodyAccelerometerMagnitudeMean         *  frequencyBodyAccelerometerMagnitudeStd         *  frequencyBodyAccelerometerMagnitudeMeanFreq         *  frequencyBodyAccelerometerJerkMagnitudeMean         *  frequencyBodyAccelerometerJerkMagnitudeStd         *  frequencyBodyAccelerometerJerkMagnitudeMeanFreq         *  frequencyBodyGyroscopeMagnitudeMean         *  frequencyBodyGyroscopeMagnitudeStd         *  frequencyBodyGyroscopeMagnitudeMeanFreq         *  frequencyBodyGyroscopeJerkMagnitudeMean         *  frequencyBodyGyroscopeJerkMagnitudeStd         *  frequencyBodyGyroscopeJerkMagnitudeMeanFreq  
       
### Steps to create summaryHumanActivity.txt
	1. Merged the training and the test sets to create one data set.
	2. Extracted the measurements on the mean and standard deviation for each measurement.
	3. Creatred a tidy data set with the average of each variable for each activity and each subject.