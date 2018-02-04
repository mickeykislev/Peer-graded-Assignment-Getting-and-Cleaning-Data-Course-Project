# Code Book for the Peer-graded Assignment for the Getting and Cleaning Data Course

This is a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data, 
and make ir a tidy data.

### The data source
Origin: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data Set Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### The files list:

#### Factors
- activity_labels.txt - used as factors
- features.txt - used as columns

#### Test results table
X_test.txt
y_test.txt
subject_test.txt

#### Training results table
X_train.txt
y_train.txt
subject_train.txt

## Data prociture:
1. Download and unzip the dataset
2. Unzip dataSet to data directory
3. Upload to Rstudio consule the data tables.
4. Assigning the column names of the for each table
5. Bind the two tables fogaather into one dataset.
6. Raplace the activity id codes into their description.
7. subset the complite data set only to the measurements on the mean and standard deviation for each measurement. 
8. Change columns names to a more discriptive ones.
9. Delete columns which were not necessary. 
10. creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## the measurements:

### The Variables:
1. subjectid - The id number given to each subject, who participated in the experiment.
2. activity - The activity he or she did. the activity the rubric was categorised into 5 categories:
   1.1. WALKING
   1.2. WALKING_UPSTAIRS
   1.3. WALKING_DOWNSTAIRS
   1.4. SITTING
   1.5. STANDING
   1.6 LAYING

### The measurements of the tidy dataset run_analysis.R:
These were described in numerical figures:
3.	TimeBodyAccelerometerMeanX
4.	TimeBodyAccelerometerMeanY
5.	TimeBodyAccelerometerMeanZ
6.	TimeGravityAccelerometerMeanX
7.	TimeGravityAccelerometerMeanY
8.	TimeGravityAccelerometerMeanZ
9.	TimeBodyAccelerometerJerkMeanX
10.	TimeBodyAccelerometerJerkMeanY
11.	TimeBodyAccelerometerJerkMeanZ
12.	TimeBodyGyroscopeMeanX
13.	TimeBodyGyroscopeMeanY
14.	TimeBodyGyroscopeMeanZ
15.	TimeBodyGyroscopeJerkMeanX
16.	TimeBodyGyroscopeJerkMeanY
17.	TimeBodyGyroscopeJerkMeanZ
18.	TimeBodyAccelerometerMagnitudeMean
19.	TimeGravityAccelerometerMagnitudeMean
20.	TimeBodyAccelerometerJerkMagnitudeMean
21.	TimeBodyGyroscopeMagnitudeMean
22.	TimeBodyGyroscopeJerkMagnitudeMean
23.	FrequencyuencyBodyAccelerometerMeanX
24.	FrequencyuencyBodyAccelerometerMeanY
25.	FrequencyuencyBodyAccelerometerMeanZ
26.	FrequencyuencyBodyAccelerometerMeanFrequencyX
27.	FrequencyuencyBodyAccelerometerMeanFrequencyY
28.	FrequencyuencyBodyAccelerometerMeanFrequencyZ
29.	FrequencyuencyBodyAccelerometerJerkMeanX
30.	FrequencyuencyBodyAccelerometerJerkMeanY
31.	FrequencyuencyBodyAccelerometerJerkMeanZ
32.	FrequencyuencyBodyAccelerometerJerkMeanFrequencyX
33.	FrequencyuencyBodyAccelerometerJerkMeanFrequencyY
34.	FrequencyuencyBodyAccelerometerJerkMeanFrequencyZ
35.	FrequencyuencyBodyGyroscopeMeanX
36.	FrequencyuencyBodyGyroscopeMeanY
37.	FrequencyuencyBodyGyroscopeMeanZ
38.	FrequencyuencyBodyGyroscopeMeanFrequencyX
39.	FrequencyuencyBodyGyroscopeMeanFrequencyY
40.	FrequencyuencyBodyGyroscopeMeanFrequencyZ
41.	FrequencyuencyBodyAccelerometerMagnitudeMean
42.	FrequencyuencyBodyAccelerometerMagnitudeMeanFrequency
43.	FrequencyuencyBodyAccelerometerJerkMagnitudeMean
44.	FrequencyuencyBodyAccelerometerJerkMagnitudeMeanFrequency
45.	FrequencyuencyBodyGyroscopeMagnitudeMean
46.	FrequencyuencyBodyGyroscopeMagnitudeMeanFrequency
47.	FrequencyuencyBodyGyroscopeJerkMagnitudeMean
48.	FrequencyuencyBodyGyroscopeJerkMagnitudeMeanFrequency
49.	AngleTimeBodyAccelerometerMeanGravity
50.	AngleTimeBodyAccelerometerJerkMeanGravityMean
51.	AngleTimeBodyGyroscopeMeanGravityMean
52.	AngleTimeBodyGyroscopeJerkMeanGravityMean
53.	AngleXGravityMean
54.	AngleYGravityMean
55.	AngleZGravityMean
