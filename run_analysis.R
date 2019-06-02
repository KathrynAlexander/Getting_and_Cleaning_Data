## This script is for the Johns Hopkins Data Science Specialization, specifically the 
## Course 3 (Getting and Cleaning Data) Week 4 Project.
##  Kathryn Alexander May 31, 2019

setwd("C:\\Users\\Kathy\\Desktop\\RRR\\datasciencecoursera\\Course3Week4Project") ## Set working directory

if (!file.exists("data")) {
        dir.create("data")
}  ## Create directory of data if it does ot exist

library(data.table) ## use data.table

##  Assemble train data
xtrain <- fread("./UCI HAR Dataset/train/x_train.txt") # read x_train file
ytrain <- fread("./UCI HAR Dataset/train/y_train.txt") # read y_train file
subjecttrain <- fread("./UCI HAR Dataset/train/subject_train.txt") # read subject_train file
subjectyxtrain <- cbind(subjecttrain,ytrain,xtrain) # combine x_train, y_train and subject_train files

##  Assemble test data
xtest <- fread("./UCI HAR Dataset/test/x_test.txt") # read x_test file
ytest <- fread("./UCI HAR Dataset/test/y_test.txt") # read y_test file
subjecttest <- fread("./UCI HAR Dataset/test/subject_test.txt") # read subject_test file
subjectyxtest <- cbind(subjecttest,ytest,xtest) # combine x_test, y_test and subject_test files

## Combine training and test data
alldata <- rbind(subjectyxtrain,subjectyxtest) # combine training and test data

## Assemble features (variable names or column names)
vars <- fread("./UCI HAR Dataset/features.txt", select = c(2))  # read features
varsvector <-vars$V2 # vector of features
varsvectorall <-c("subject", "activitylabel", varsvector) # add names for initial two columns
names(alldata) <- varsvectorall # apply names to columns

## Select columns (with names that contain mean or std) to keep
keepcolumns <- grep("subject|activitylabel|mean|std", colnames(alldata)) #select columns to keep (column name contains mean or std)
datasmall <- subset(alldata, select = keepcolumns)  #data with selected columns

## Add activity labels to data
activity <- fread("./UCI HAR Dataset/activity_labels.txt") # read activity_labels file
names(activity) <- c("activitynumber", "activitylabel")  # name columns in the activity labels file
alldataactivity <- merge(activity, datasmall, by.x = "activitynumber", by.y = "activitylabel", all=TRUE)  ## Add activity labels to data

## Create a second, independent tidy data set with the average of each variable for each activity and each subject.
## Temporarily remove the activity labels for easier processing of the data to get the means
activitysubjectmeans <-alldataactivity %>% 
        select(-activitylabel) %>% 
        group_by(activitynumber,subject)%>%
        summarise_all (mean)

##  Add the activity labels back to the data, after processing to get the means
activitysubjectmeanslabel <- merge(activity, activitysubjectmeans, by.x = "activitynumber", by.y = "activitynumber", all=TRUE)

##  The name of the second, independent tidy data set with the average of each variable for each activity and each subject is activitysubjectmeanslabel
activitysubjectmeanslabel

str(activitysubjectmeanslabel)

##  Use write.table() using row.name=FALSE to make a txt file
write.table(activitysubjectmeanslabel, file="./data/varavgs.txt", sep="\t", row.names=FALSE)

##  To read the datafile  back in a view it, uncomment these two lines
# data <- read.table(file = "./data/varavgs.txt", header = TRUE)
# View(data)

