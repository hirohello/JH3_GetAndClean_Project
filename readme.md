Getting and Cleaning Data - Course Project
==========================================

Introduction
------------
This repository hosts the R code and documentation files for the coursera's course "Getting and Cleaning data".

The dataset used for this project is: [Human Activity Recognition Using Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Information on the raw dataset
------------------------------
Details about the files of the raw data (which should be contained in a file named "UCI HAR Dataset") can be found in the `README.txt` file. 
The `README.txt` file is located in the same folder as all the other raw data. 

- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

How to run the script with the dataset
--------------------------------------
1. Download the "UCI HAR Dataset" from the link in the Inroduction and upzip the file to the work directory. 
2. Make sure the unzipped folder is named as "UCI HAR Dataset" (i.e. no alteration on the file names). 
3. Run the script `run_analysis.R` which is provided in this repository. It tidies the raw dataset in 5 steps as requested for this project.
4. The output should be the dataset `result_MeanOfVariables.txt` which contains the average of each variable for each activity and each subject. 

Variables in the output dataset
-------------------------------
Discription on the variables, the data and any transformations or work that was performed to clean up the raw data is contaned in the 'CodeBook.md' file, whcih can be found in this repository. 
