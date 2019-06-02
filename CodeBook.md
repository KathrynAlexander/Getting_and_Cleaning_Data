---
title: "CodeBook"
author: "Kathryn Alexander"
date: "6/2/2019"
output:
  html_document:
        keep_md: yes
---



## Introduction
This CodeBook is for a dataset that was adapated from data in the study:  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012  
 
As such it has many verbatim and lightly edited sections from the original files:
* 'features_info.txt'
* 'features.txt'  
For clarity, these sections are not set within quotation marks in this document.  The original data and description is available as follows:
Description
[link] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
Data:
[link] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Original Information


### Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are:  

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

### Information on the Adapted DataSet

#### Column Headers
The column headers for the adapted data set are as follows.  The ones that start with "t" or "f" retain 
the same names as in the original dataset, for clarity and traceability.  Please see above for basic 
definitions of the terms.  No further definition is provided in this CodeBook, as these terms will generally be familiar and understandable to those skilled in Mechanics.  

1.	activitynumber
2.	activitylabel
3.	subject
4.	tBodyAcc-mean()-X
5.	tBodyAcc-mean()-Y
6.	tBodyAcc-mean()-Z
7.	tBodyAcc-std()-X
8.	tBodyAcc-std()-Y
9.	tBodyAcc-std()-Z
10.	tGravityAcc-mean()-X
11.	tGravityAcc-mean()-Y
12.	tGravityAcc-mean()-Z
13.	tGravityAcc-std()-X
14.	tGravityAcc-std()-Y
15.	tGravityAcc-std()-Z
16.	tBodyAccJerk-mean()-X
17.	tBodyAccJerk-mean()-Y
18.	tBodyAccJerk-mean()-Z
19.	tBodyAccJerk-std()-X
20.	tBodyAccJerk-std()-Y
21.	tBodyAccJerk-std()-Z
22.	tBodyGyro-mean()-X
23.	tBodyGyro-mean()-Y
24.	tBodyGyro-mean()-Z
25.	tBodyGyro-std()-X
26.	tBodyGyro-std()-Y
27.	tBodyGyro-std()-Z
28.	tBodyGyroJerk-mean()-X
29.	tBodyGyroJerk-mean()-Y
30.	tBodyGyroJerk-mean()-Z
31.	tBodyGyroJerk-std()-X
32.	tBodyGyroJerk-std()-Y
33.	tBodyGyroJerk-std()-Z
34.	tBodyAccMag-mean()
35.	tBodyAccMag-std()
36.	tGravityAccMag-mean()
37.	tGravityAccMag-std()
38.	tBodyAccJerkMag-mean()
39.	tBodyAccJerkMag-std()
40.	tBodyGyroMag-mean()
41.	tBodyGyroMag-std()
42.	tBodyGyroJerkMag-mean()
43.	tBodyGyroJerkMag-std()
44.	fBodyAcc-mean()-X
45.	fBodyAcc-mean()-Y
46.	fBodyAcc-mean()-Z
47.	fBodyAcc-std()-X
48.	fBodyAcc-std()-Y
49.	fBodyAcc-std()-Z
50.	fBodyAcc-meanFreq()-X
51.	fBodyAcc-meanFreq()-Y
52.	fBodyAcc-meanFreq()-Z
53.	fBodyAccJerk-mean()-X
54.	fBodyAccJerk-mean()-Y
55.	fBodyAccJerk-mean()-Z
56.	fBodyAccJerk-std()-X
57.	fBodyAccJerk-std()-Y
58.	fBodyAccJerk-std()-Z
59.	fBodyAccJerk-meanFreq()-X
60.	fBodyAccJerk-meanFreq()-Y
61.	fBodyAccJerk-meanFreq()-Z
62.	fBodyGyro-mean()-X
63.	fBodyGyro-mean()-Y
64.	fBodyGyro-mean()-Z
65.	fBodyGyro-std()-X
66.	fBodyGyro-std()-Y
67.	fBodyGyro-std()-Z
68.	fBodyGyro-meanFreq()-X
69.	fBodyGyro-meanFreq()-Y
70.	fBodyGyro-meanFreq()-Z
71.	fBodyAccMag-mean()
72.	fBodyAccMag-std()
73.	fBodyAccMag-meanFreq()
74.	fBodyBodyAccJerkMag-mean()
75.	fBodyBodyAccJerkMag-std()
76.	fBodyBodyAccJerkMag-meanFreq()
77.	fBodyBodyGyroMag-mean()
78.	fBodyBodyGyroMag-std()
79.	fBodyBodyGyroMag-meanFreq()
80.	fBodyBodyGyroJerkMag-mean()
81.	fBodyBodyGyroJerkMag-std()
82.	fBodyBodyGyroJerkMag-meanFreq()

#### Activity Labels
The Activity Labels and Numbers assigned to the rows of the dataset are:  

1. WALKING  
2. WALKING_UPSTAIRS  
3. WALKING_DOWNSTAIRS  
4. SITTING  
5. STANDING  
6. LAYING  

#### Subjects
The Subjects are labelled numerically from 1 to 30.

#### Data
The data in columns 4 though 82 of the dataset are the average of each variable for 
each activity and each subject, as indicated by the corresponding Activity Labels, Activity Numbers, and Subjects.
