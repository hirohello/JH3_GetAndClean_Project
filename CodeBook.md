CodeBook for the tidy dataset
=============================

Raw Data
--------
The dataset used for this project is: [Human Activity Recognition Using Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

`run_analysis.R` performs 5 analysis steps which merge and tidy the raw dataset and output a independent tidy dataset as requested. 
The analysis is explained within the script comments at appropriate points. 

Feature Selection
-----------------
Only the measurements on the mean and standard deviation for each measurement are selected as requested. 
This is done by selecting features with mean() and std() in their feature names, which is performed in `run_analysis.R`. 
Please refer to `HCI HAR Dataset/features_info.txt` for details. 

Output Variables
----------------
Variables are described by the comlumn names of the dataset `result_MeanOfVariables.txt` and are explained as followed. 

- Subject : indicates who performed the activity for each window sample. Its range is from 1 to 30.
- Activity: the activity that was performed by the subject. There are 6 different activities. 

Other variables are the average of the sleceted features. This mean that they are the average of the mean and the avereage of the standard deviation for each measurment, for each activity and each subject. 

Features of the variable are seperated using the symbol "_" and the keys are explained as followed, in order of their appearance in the variables names. 
If the key is missing, it means such feature does not apply to that variable. 

The keys are:
- t_: Time Domain Signals. 
- f_: Frequency Domain Signals. 

- Body_: Body acceleration signals
- Gravity_: Gravity acceleration signals.

- Acc_: Linear acceleration.
- Gyro_: Angular acceleration.

- Jerk_: Jerk signals.
- Mag_: Magnitude of the signals which was calculated using the Euclidean norm. 

- mean_: Mean value.
- std_: Standard deviation.

- X: X direction (3-axial signals). 
- Y: Y direction (3-axial signals).
- Z: Z direction (3-axial signals). 

Please refer to `HCI HAR Dataset/features_info.txt` for details.


