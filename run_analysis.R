## Downloading and unzipping dataset
getwd();
if(!file.exists("./final")){dir.create("./final")};
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
download.file(fileUrl,destfile="./final/datasource.zip");

## Unzip dataSet to data directory
unzip(zipfile="./final/datasource.zip", exdir="./final");

## Reading the feature table
features <- read.table("./final/UCI HAR Dataset/features.txt", header = FALSE);

## Reading the activity labels table
activity_Labels = read.table("./final/UCI HAR Dataset/activity_labels.txt", header = FALSE);

## Assigning the column names of the activity labels table
colnames(activity_Labels) <- c("activityid", "activitytype");

## loading the trainings tables
x_train <- read.table("./final/UCI HAR Dataset/train/X_train.txt", header = FALSE);
y_train <- read.table("./final/UCI HAR Dataset/train/y_train.txt", header = FALSE);
subject_train <- read.table("./final/UCI HAR Dataset/train/subject_train.txt", header = FALSE);

## Assigning the column names of training
colnames(x_train) <- features[,2];
colnames(y_train) <-"activityid";
colnames(subject_train) <- "subjectid";

## loading the testing tables
x_test <- read.table("./final/UCI HAR Dataset/test/X_test.txt", header = FALSE);
y_test <- read.table("./final/UCI HAR Dataset/test/y_test.txt", header = FALSE);
subject_test <- read.table("./final/UCI HAR Dataset/test/subject_test.txt", header = FALSE);

## Assigning the column names of test
colnames(x_test) <- features[,2];
colnames(y_test) <- "activityid";
colnames(subject_test) <- "subjectid";


## Merging all the data into a coherent dataframe
margeTraining <- cbind(y_train, subject_train, x_train);
margeTest <- cbind(y_test, subject_test, x_test);
mainDataframe <- rbind(margeTraining, margeTest);
str(mainDataframe);
rm("margeTraining", "margeTest", "x_test", "y_test", 
   "subject_test", "x_train", "y_train", "subject_train", "features");


## Replace the numbers in the Activity column to factor names
mainDataframe$activity <- factor(mainDataframe$activityid, 
                                 levels = activity_Labels$activityid,
                                 labels = activity_Labels$activitytype);

## Reading column names of the marged dataframe
colNamesAll <- colnames(mainDataframe);

## Subsetting the collumns of means and standard deviations
meanOrSdiv <- (grepl("activity", colNamesAll) | grepl("subjectid", colNamesAll) | 
                         grepl(".*[Mm]ean.*", colNamesAll) | grepl(".*[Ss]td.*", colNamesAll));
filterMeanSdiv <- mainDataframe[ , meanOrSdiv == TRUE];

## Changing to descriptive activity names 
withDiscriptiveNames <- merge(filterMeanSdiv, activity_Labels, by.x = "activityid", all = TRUE);

## Producing the tidy dataframe
secondTidydataframe <- aggregate(. ~subjectid + activity, withDiscriptiveNames, mean);
secondTidydataframe <- secondTidydataframe[order(secondTidydataframe$subjectid, secondTidydataframe$activityid), ];
rm("activity_Labels", "filterMeanSdiv", "withDiscriptiveNames", "colNamesAll", "meanOrSdiv");

## Label the Data Set with descriptive variable names
colnames(secondTidydataframe) <- gsub("\\(", "", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("\\)", "", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("\\-", "", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("\\,", "", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("Acc", "Accelerometer", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("Gyro", "Gyroscope", names(secondTidydataframe));
colnames(secondTidydataframe) <-gsub("BodyBody", "Body", names(secondTidydataframe));
colnames(secondTidydataframe) <-gsub("Mag", "Magnitude", names(secondTidydataframe));
colnames(secondTidydataframe) <-gsub("^t", "Time", names(secondTidydataframe));
colnames(secondTidydataframe) <-gsub("^f", "Frequency", names(secondTidydataframe));
colnames(secondTidydataframe) <-gsub("mean", "Mean", names(secondTidydataframe), ignore.case = TRUE);
colnames(secondTidydataframe) <-gsub("std", "StandardDeviation", names(secondTidydataframe), ignore.case = TRUE);
colnames(secondTidydataframe) <-gsub("freq", "Frequency", names(secondTidydataframe), ignore.case = TRUE);
colnames(secondTidydataframe) <- gsub("angle", "Angle", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("gravity", "Gravity", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("tBody", "TimeBody", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("jark", "Jark", names(secondTidydataframe));
colnames(secondTidydataframe) <- gsub("scopescopescope", "Scope", names(secondTidydataframe));


## Delete non discriptive fields
secondTidydataframe$activityid <- NULL;
secondTidydataframe$activitytype <- NULL;

## Saving the tidy dataframe as a file
write.table(secondTidydataframe, "secondTidyDataset.txt", row.name=FALSE)
