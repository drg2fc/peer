# Introduction

This dataset is constructed over UCI HAR Dataset:

* Human Activity Recognition Using Smartphones Dataset Version 1.0

  Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
  Smartlab - Non Linear Complex Systems Laboratory
  DITEN - Universita' degli Studi di Genova.
  Via Opera Pia 11A, I-16145, Genoa, Italy.
  activityrecognition@smartlab.ws
  www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

# Data operations

The script does these operations:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# For each record it is provided

- A means of the 561 variables (features) of the original data set aggregated by subject and activity

# The dataset includes the following files
- 'README.md': instructions to execute the data analysis
- 'CodeBook.md': information about data operations and formats
- 'run_analysis.R': R script for data analysis
- 'UCI HAR Dataset.zip': Original datasets
- 'tidi_dataset.txt': new dataset created over UCI HAR Dataset.zip

# Notes 

Tidy data are saved in a file named: tidy_dataset.txt in a CSV format.

# License

This dataset is constructed over datasets of the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
