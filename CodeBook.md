The data set that this code book pertains to is located in the `tidy.txt` file of this repository.
 
 See the `README.md` file of this repository for background information on this data set.
 
 The structure of the data set is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.
 
 ## Data 
 
 The `tidy.txt` data file is a text file, containing space-separated values.
 
 The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 

 ## Variables <
 
 Each row contains, for a given subject and activity, 79 averaged signal measurements.
 
 ### Identifiers 
 
 - `subject`
 
 	Subject identifier, integer, ranges from 1 to 30.
 
 - `activity`
 
 	Activity identifier, string with 6 possible values: 
 	- `WALKING`: subject was walking
 	- `WALKING_UPSTAIRS`: subject was walking upstairs
 	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
 	- `SITTING`: subject was sitting
 	- `STANDING`: subject was standing
 	- `LAYING`: subject was laying
 
 ### Average of measurements 
 
 All measurements are floating-point values, normalised and bounded within [-1,1].
 
 Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s?²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s?¹).
 
 Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.
 
 The measurements are classified in two domains:
 
 - Time-domain signals (variables prefixed by `timeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.
 
 - Frequency-domain signals (variables prefixed by `frequencyDomain`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.
 
 #### Time-domain signals
 
 - Average time-domain body acceleration in the X, Y and Z directions:
 
 	- `timeDomainBodyAccelerometerMeanX`
 	- `timeDomainBodyAccelerometerMeanY`
 	- `timeDomainBodyAccelerometerMeanZ`
 
 - Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
 
 	- `timeDomainBodyAccelerometerStandardDeviationX`
 	- `timeDomainBodyAccelerometerStandardDeviationY`
 	- `timeDomainBodyAccelerometerStandardDeviationZ`
 
 - Average time-domain gravity acceleration in the X, Y and Z directions:
 
 	- `timeDomainGravityAccelerometerMeanX`
 	- `timeDomainGravityAccelerometerMeanY`
 	- `timeDomainGravityAccelerometerMeanZ`
 
 - Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
 
 	- `timeDomainGravityAccelerometerStandardDeviationX`
 	- `timeDomainGravityAccelerometerStandardDeviationY`
 	- `timeDomainGravityAccelerometerStandardDeviationZ`
 
 - Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
 
 	- `timeDomainBodyAccelerometerJerkMeanX`
 	- `timeDomainBodyAccelerometerJerkMeanY`
 	- `timeDomainBodyAccelerometerJerkMeanZ`
 
 - Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
 
 	- `timeDomainBodyAccelerometerJerkStandardDeviationX`
 	- `timeDomainBodyAccelerometerJerkStandardDeviationY`
 	- `timeDomainBodyAccelerometerJerkStandardDeviationZ`
 
 - Average time-domain body angular velocity in the X, Y and Z directions:
 
 	- `timeDomainBodyGyroscopeMeanX`
 	- `timeDomainBodyGyroscopeMeanY`
 	- `timeDomainBodyGyroscopeMeanZ`
 
 - Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
 
 	- `timeDomainBodyGyroscopeStandardDeviationX`
 	- `timeDomainBodyGyroscopeStandardDeviationY`
 	- `timeDomainBodyGyroscopeStandardDeviationZ`
 
 - Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
 
 	- `timeDomainBodyGyroscopeJerkMeanX`
 	- `timeDomainBodyGyroscopeJerkMeanY`
 	- `timeDomainBodyGyroscopeJerkMeanZ`
 
 - Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

 	- `timeDomainBodyGyroscopeJerkStandardDeviationX`
 	- `timeDomainBodyGyroscopeJerkStandardDeviationY`
 	- `timeDomainBodyGyroscopeJerkStandardDeviationZ`
 
 - Average and standard deviation of the time-domain magnitude of body acceleration:
 
 	- `timeDomainBodyAccelerometerMagnitudeMean`
 	- `timeDomainBodyAccelerometerMagnitudeStandardDeviation`
 
 - Average and standard deviation of the time-domain magnitude of gravity acceleration:
 
 	- `timeDomainGravityAccelerometerMagnitudeMean`
 	- `timeDomainGravityAccelerometerMagnitudeStandardDeviation`
 
 - Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
 
 	- `timeDomainBodyAccelerometerJerkMagnitudeMean`
 	- `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
 
 - Average and standard deviation of the time-domain magnitude of body angular velocity:
 
 	- `timeDomainBodyGyroscopeMagnitudeMean`
 	- `timeDomainBodyGyroscopeMagnitudeStandardDeviation`
 
 - Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
 
 	- `timeDomainBodyGyroscopeJerkMagnitudeMean`
 	- `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
 
 #### Frequency-domain signals
 
 - Average frequency-domain body acceleration in the X, Y and Z directions:
 
 	- `frequencyDomainBodyAccelerometerMeanX`
 	- `frequencyDomainBodyAccelerometerMeanY`
 	- `frequencyDomainBodyAccelerometerMeanZ`
 
 - Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
 
 	- `frequencyDomainBodyAccelerometerStandardDeviationX`
 	- `frequencyDomainBodyAccelerometerStandardDeviationY`
 	- `frequencyDomainBodyAccelerometerStandardDeviationZ`
 
 - Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
 
 	- `frequencyDomainBodyAccelerometerMeanFrequencyX`
 	- `frequencyDomainBodyAccelerometerMeanFrequencyY`
 	- `frequencyDomainBodyAccelerometerMeanFrequencyZ`
 
 - Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
 
 	- `frequencyDomainBodyAccelerometerJerkMeanX`
 	- `frequencyDomainBodyAccelerometerJerkMeanY`
 	- `frequencyDomainBodyAccelerometerJerkMeanZ`
 
 - Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
 
 	- `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
 	- `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
 	- `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`
 
 - Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
 
 	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
 	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
 	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`
 
 - Average frequency-domain body angular velocity in the X, Y and Z directions:
 
 	- `frequencyDomainBodyGyroscopeMeanX`
 	- `frequencyDomainBodyGyroscopeMeanY`
 	- `frequencyDomainBodyGyroscopeMeanZ`
 
 - Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
 
 	- `frequencyDomainBodyGyroscopeStandardDeviationX`
 	- `frequencyDomainBodyGyroscopeStandardDeviationY`
 	- `frequencyDomainBodyGyroscopeStandardDeviationZ`
 
 - Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
 
 	- `frequencyDomainBodyGyroscopeMeanFrequencyX`
 	- `frequencyDomainBodyGyroscopeMeanFrequencyY`
 	- `frequencyDomainBodyGyroscopeMeanFrequencyZ`
 
 - Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
 
 	- `frequencyDomainBodyAccelerometerMagnitudeMean`
 	- `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
 	- `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`
 
 - Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
 
 	- `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
 	- `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
 	- `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`
 
 - Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
 
 	- `frequencyDomainBodyGyroscopeMagnitudeMean`
 	- `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
 	- `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`
 
 - Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
 
 	- `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
 	- `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
 	- `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

## Transformations:
data source      : "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
data for project : "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR"

The script in run_analysis.R includes 5 step that are as follows: 
download the file that is to be used for the project.unzip it after downloading.

##step1 : merging the training dataset and test data set to create a one data set using rbind() function:
## 1.Merges the training and the test sets to create one data set.
xTrain - have the data fetched from the X training set i.e read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain - have the data fetched from the Y training set i.e read.table("./UCI HAR Dataset/train/Y_train.txt")
subjectTrain - have the data fetched by the subject Train set i.e. read.table("UCI HAR dataset/train/subject_train.txt")

xtest - have the data fetched from the X-test set i.e. read.table("./UCI HAR Dataset/test/X_test.txt")
ytest - have the data fetched from the Y-test set i.e read.table("./UCI HAR Dataset/test/Y_test.txt")
subjectTest - have the data fetched from the subject Train set i.e read.table("./UCI HAR Dataset/test/subject_test.txt")

features - have the data fetched from the features data set  i.e.read.table("./UCI HAR Dataset/features.txt")

activityLabels - have the data fetched from the activity labels data set i.e read.table("./UCI HAR Dataset/activity_labels.txt")

xFeaturesData - includes the merged data of X data set i.e feature data set - rbind(xTrain, xtest)
yActivityData - includes the merged data of Y data set i.e activity data set - rbind(yTrain, ytest
subjectData -includes the merged data of subject data set -  rbind(subjectTrain, subjectTest)

now, finally merging the data into one big data set using the cbind() function 
allData <- cbind(xFeaturesData, yActivityData, subjectData)

## step 2:In this step,only those columns with the mean and standard deviation measures are taken from the whole dataset  i.e. to get the column only with mean() and std() in their names.
mean_and_std_features - includes the data of with mean() and std() in their names.

##step3:As activity data is addressed with values 1:6, we take the activity names and IDs from `activity_labels.txt` and they are substituted in the data set

##step4: Appropriately labels the data set with descriptive variable names.
Use gsub function for pattern replacement to clean up the data labels.

##step5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
Finally, we generate a new dataset with all the average measures for each subject and activity type (30 subjects * 6 activities = 180 rows). The output file is called `tidy.txt`, and uploaded to this repository.

 