---
title: "README"
author: "Kathryn Alexander"
date: "6/2/2019"
output:
  html_document:
        keep_md: yes
---



## Introduction

This dataset was developed as part of the "Getting and Cleaning Data" Course from Johns Hopkins University, given through Coursera.  This dataset is an adaptation (subset and further summarization) of the original dataset which is called "Human Activity Recognition Using Smartphones Dataset, Version 1.0" and which is further described immediately below.  The current "adapted" dataset created in this project is described further below.


## Original Dataset

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universita degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.   
activityrecognition@smartlab.ws  
www.smartlab.ws  

### License for Original Dataset

Use of this dataset is acknowledged:    
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012  
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.  
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.  
For more information about this dataset contact: activityrecognition@smartlab.ws  

### Description of Original Dataset
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components,  was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#### Provided for Each Record:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

#### Files in the Dataset

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

#### Files are available for the train and test data. (Their descriptions are equivalent.) 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

#### Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


## Current Adapted Dataset

### Initial Analysis  

An R script called run_analysis.R was created that merged the training and test sets into one dataset. Next, only the measurements on the mean and standard deviation for each measurement were extracted.  Descriptive activity names were added (from the original dataset) to clarify the activities (which were marked with numbers). Descriptive variable names were added to the columns. This then comprised the first dataset.  

### Creation of the Second Dataset  

Finally, a second independant dataset was created from this first dataset.  This second dataset contains the average of each variable for each activity and each subject.  This second dataset is tidy because it meets the criteria set forth by Jeff Leek in his book, "The Elements of Data Analytic Style"  

1.  Each variable you measure should be in one column. (This is true for the dataset)
2.  Each different observation of that variable should be in a different row.  (This is true for the dataset)
3.  There should be one table for each "kind" of variable. (This is true for the dataset)
4.  If you have multiple tables, they should include a column in the table that allows them to be linked. (This dataset does not have multiple tables.)

### A Note on Extracting Only the Measurements on the Mean and Standard Deviation

In the original dataset description, the set of variables that were estimated from these signals were given as follows.  The instructions for the adapted data set were simply to "extract only the measurements on the mean and standard deviation for each measurement".  This requires interpretation, because in addition to the mean() and std() in the variables list below,the word "mean" appears in other variables as well. My decision was to only extract the mean() and std() measurements (first two items in the list below) because it is the simplest interpretation of the instruction.  Simplicity is a key good design principle.  See the Wikipedia article [link] (https://en.wikipedia.org/wiki/KISS_principle)

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

### Other Notes

1. Discussion of why the "descriptive" variable names are descriptive is included in the CodeBook.

2. The data in the inertial folder was not added to the dataset, as the step on extracting only the measurements on mean and standard deviation for each measurement 
would have immediately removed it.  Therefoe there was no point in adding it to the dataset only to remove it in the next step.  

### Files in the Second Dataset

- 'README.Rmd'
- 'run_analysis.R': This is the R script that was used to create the second dataset from the first dataset.
- 'CodeBook.Rmd': CodeBook listing all of the columns/variables/features

### How to Read the Dataset
Please note that one way of reading the second data file is this code.  This is an adaptation of the code  suggested by David Hood in his article "Getting and Cleaning the Assignment" from his "Coursera Getting and Cleaning Data R" series.


```r
data <- read.table(<YourFilePathHere>, header = True)
view(data)
```




