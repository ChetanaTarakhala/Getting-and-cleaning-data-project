## 1.Merges the training and the test sets to create one data set.

library(data.table)
library(plyr)
library(dplyr)

## downloading the files and unzipped file.
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "final_data.zip")
if(!file.exists("./UCI HAR Dataset")) {
  unzip("final_data.zip")
}

## READING THE TRAIN FILE:
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subjectTrain <- read.table("UCI HAR dataset/train/subject_train.txt")

##READING THE TEST FILE:
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

##READING FEATURE VECTOR:
features <- read.table("./UCI HAR Dataset/features.txt")

##READING ACTIVITY LABEL:
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## MERGING THE FUTURE DATA: 
xFeaturesData <- rbind(xTrain, xtest)

## MERGING THE ACTIVITY DATA:
yActivityData <- rbind(yTrain, ytest)

## MERGING SUBJECT DATA:
subjectData <- rbind(subjectTrain, subjectTest)

## SETNAMES TO THE VARIABLES:
names(subjectData)   <- "subject"
names(yActivityData) <- "activity"
names(xFeaturesData) <- features$V2

## MERGE DATA ALL IN ONE:
allData <- cbind(xFeaturesData, yActivityData, subjectData)

## 2. To extracts only the measurements on the mean and standard deviation for each measurement.
##    to get the column only with mean() and std() in their names.

mean_and_std_features <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]

## subset the desired columns
selectedColumns <- c(as.character(mean_and_std_features), "subject", "activity" )

## correct the column names:
allData <- subset(allData, select = selectedColumns)

## 3. use descriptive activity names to name the activities in the data set.
##    update values with correct activity names.
allData$activity <- activityLabels[allData$activity, 2]

## 4. Appropriately labels the data set with descriptive variable names.
names(allData) <-gsub("^t", "time", names(allData))
names(allData) <-gsub("^f", "frequency", names(allData))
names(allData) <-gsub("Acc", "Accelerometer", names(allData))
names(allData) <-gsub("Gyro", "Gyroscope", names(allData))
names(allData) <-gsub("Mag", "Magnitude", names(allData))
names(allData) <-gsub("BodyBody", "Body", names(allData))

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
finalData <- ddply(allData, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(finalData, "tidy.txt", row.names = FALSE)
