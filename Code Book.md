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
   1.6. LAYING

### The measurements of the tidy dataset run_analysis.R (86 indicators in the dataset):
These were described in numerical figures:
* TimeBodyAccelerometerMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1. 
* TimeBodyAccelerometerStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1. 

* TimeGravityAccelerometerMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1.
* TimeGravityAccelerometerStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1. 

* TimeBodyAccelerometerJerkMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1.
* TimeBodyAccelerometerJerkStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1. 

* TimeBodyGyroscopeMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1.
* TimeBodyGyroscopeStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1. 

* TimeBodyGyroscopeJerkMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1.
* TimeBodyGyroscopeJerkStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1. 

* TimeBodyAccelerometerMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* *TimeBodyAccelerometerMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1. 

* TimeGravityAccelerometerMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* TimeGravityAccelerometerMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* TimeBodyAccelerometerJerkMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* TimeBodyAccelerometerJerkMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* TimeBodyGyroscopeMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* TimeBodyGyroscopeMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* TimeBodyGyroscopeJerkMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* TimeBodyGyroscopeJerkMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* FrequencyuencyBodyAccelerometerMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1.
* FrequencyuencyBodyAccelerometerStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1. 

* FrequencyuencyBodyAccelerometerMeanFrequencyX/Y/Z - int, Numeric, Mean of the index between -1 to 1.

* FrequencyuencyBodyAccelerometerJerkMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1.
* FrequencyuencyBodyAccelerometerJerkStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1.

* FrequencyuencyBodyAccelerometerJerkMeanFrequencyX/Y/Z - int, Numeric, Mean of the index between -1 to 1.

* FrequencyuencyBodyGyroscopeMeanX/Y/Z - int, Numeric, Mean of the index between -1 to 1.
* FrequencyuencyBodyGyroscopeStandardDeviationX/Y/Z - int, Numeric, Standard Deviation of the index between -1 to 1.

* FrequencyuencyBodyGyroscopeMeanFrequencyX/Y/Z - int, Numeric, Mean of the index between -1 to 1.

* FrequencyuencyBodyAccelerometerMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* FrequencyuencyBodyAccelerometerMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* FrequencyuencyBodyAccelerometerMagnitudeMeanFrequency - int, Numeric, Mean of the index between -1 to 1.

* FrequencyuencyBodyAccelerometerJerkMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* FrequencyuencyBodyAccelerometerJerkMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* FrequencyuencyBodyAccelerometerJerkMagnitudeMeanFrequency - int, Numeric, Mean of the index between -1 to 1.

* FrequencyuencyBodyGyroscopeMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* FrequencyuencyBodyGyroscopeMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* FrequencyuencyBodyGyroscopeMagnitudeMeanFrequency - int, Numeric, Mean of the index between -1 to 1.

* FrequencyuencyBodyGyroscopeJerkMagnitudeMean - int, Numeric, Mean of the index between -1 to 1.
* FrequencyuencyBodyGyroscopeJerkMagnitudeStandardDeviation - int, Numeric, Standard Deviation of the index between -1 to 1.

* FrequencyuencyBodyGyroscopeJerkMagnitudeMeanFrequency - int, Numeric, Mean of the index between -1 to 1.

* AngleTimeBodyAccelerometerMeanGravity - int, Numeric, Mean of the index between -1 to 1.

* AngleTimeBodyAccelerometerJerkMeanGravityMean - int, Numeric, Mean of the index between -1 to 1.

* AngleTimeBodyGyroscopeMeanGravityMean - int, Numeric, Mean of the index between -1 to 1.

* AngleTimeBodyGyroscopeJerkMeanGravityMean - int, Numeric, Mean of the index between -1 to 1.

* AngleX/Y/ZGravityMean - int, Numeric, Mean of the index between -1 to 1.
