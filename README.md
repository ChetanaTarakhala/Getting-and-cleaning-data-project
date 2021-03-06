### Getting and Cleaning data: course project

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Overview:
The purpose of this project was to demonstrate my ability to collect, work with, and clean a data set. In this repo you will find the following lines:
- An R script (run_analysis.R) that will create a tidy data set.
- A codeBook that describe the variables in the tidy datset and how this data set is created.
- This is a README.md

## Course Project Summary:
This R script creates a tidy data set from the study "Smartphone-Based Human Activity Recognition".
A full description of the study's design can be found here "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
The raw data set can be downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  
Download the data and unzip the file.Then run the R script "run_analyis.R" to create the final dataset.
The R script will perform the 5 transformation:
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Additional Information:
You can find additional information about the variables, data and transformations in the CodeBook.md file.