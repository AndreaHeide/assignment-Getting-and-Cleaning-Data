
---
title: "CodeBook"
author: "Andrea Heide"
date: "18 November 2016"
output: html_document
---

This code book describes the variables, the data, and the transformations performed to clean up the data of the assignment.

The data set consists of the file tidy_data.txt.

The data in the tidy_data.txt file was generated from the data source as indicated below and was tidied and tranformed using the R script 'run_analysis.R'.
More information about the transformations performed by the script can be found in the file README.md.

Data source:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

Information about the data:
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
Tidy_data contains the average of part of these measurement variables (those concerning mean and standard deviation) for each of the 30 subjects, for 6 different activities (walking, walking upstairs, walking downstairs, sitting, standing, laying). It combines traing data and test data in one dataset with 180 observations of 88 variables each.    

The data in the tidy_data.txt file consists of the following variables:

1. subject: integer (range 1 to 30) - the id of the subject who's movements were used to generate the data, 30 persons in total
2. activity: character, 6 values ("LAYING" "SITTING" "STANDING" "WALKING", "WALKING UPSTAIRS", "WALKING DOWNSTAIRS") - indicates the kind of activity that was measured 
The following measurement variables all are averages (mean) of the original measurements:
3. timeBodyAccelerometer-mean()-X: numeric  - tri-axial acceleration time mean, body motion component, x-axis 
4. timeBodyAccelerometer-mean()-Y: numeric  - tri-axial acceleration mean, body motion component, y-axis 
5. timeBodyAccelerometer-mean()-Z: numeric  - tri-axial acceleration mean, body motion component, z-axis         
6. timeBodyAccelerometer-std()-X:  numeric  - tri-axial acceleration standard deviation, body motion component, x-axis  
7. timeBodyAccelerometer-std()-Y:  numeric  - tri-axial acceleration standard deviation, body motion component, y-axis  
8. timeBodyAccelerometer-std()-Z:  numeric  - tri-axial acceleration standard deviation, body motion component, z-axis  
9. timeGravityAccelerometer-mean()-X:  numeric  - tri-axial acceleration mean, gravity component, x-axis 
10. timeGravityAccelerometer-mean()-Y: numeric  - tri-axial acceleration mean, gravity component, y-axis 
11. timeGravityAccelerometer-mean()-Z: numeric  - tri-axial acceleration mean, gravity component, y-axis 
12. timeGravityAccelerometer-std()-X:  numeric  - tri-axial acceleration standard deviation, gravity component, x-axis 
13. timeGravityAccelerometer-std()-Y:  numeric  - tri-axial acceleration standard deviation, gravity component, y-axis
14. timeGravityAccelerometer-std()-Z:  numeric  - tri-axial acceleration standard deviation, gravity component, y-axis
15. timeBodyAccelerometerJerk-mean()-X: numeric - tri-axial acceleration mean jerking motion, body motion component, x-axis 
16. timeBodyAccelerometerJerk-mean()-Y: numeric - tri-axial acceleration mean jerking motion, body motion component, y-axis 
17. timeBodyAccelerometerJerk-mean()-Z: numeric - tri-axial acceleration mean jerking motion, body motion component, z-axis 
18. timeBodyAccelerometerJerk-std()-X: numeric - tri-axial acceleration standard deviation jerking motion, body motion component, x-axis
19. timeBodyAccelerometerJerk-std()-Y: numeric - tri-axial acceleration standard deviation jerking motion, body motion component, y-axis
20. timeBodyAccelerometerJerk-std()-Z: numeric - tri-axial acceleration standard deviation jerking motion, body motion component, z-axis
21. timeBodyGyroscope-mean()-X: numeric - tri-axial angular velocity mean, measured by Gyroscope, x-axis
22. timeBodyGyroscope-mean()-Y: numeric - tri-axial angular velocity mean, measured by Gyroscope, y-axis
23. timeBodyGyroscope-mean()-Z: numeric - tri-axial angular velocity mean, measured by Gyroscope, z-axis
24. timeBodyGyroscope-std()-X: numeric - tri-axial angular velocity standard deviation, measured by Gyroscope, x-axis
25. timeBodyGyroscope-std()-Y: numeric - tri-axial angular velocity standard deviation, measured by Gyroscope, y-axis
26. timeBodyGyroscope-std()-Z: numeric - tri-axial angular velocity standard deviation, measured by Gyroscope, z-axis
27. timeBodyGyroscopeJerk-mean()-X: numeric - tri-axial angular velocity mean jerking motion, measured by Gyroscope, x-axis
28. timeBodyGyroscopeJerk-mean()-Y: numeric - tri-axial angular velocity mean jerking motion, measured by Gyroscope, y-axis
29. timeBodyGyroscopeJerk-mean()-Z: numeric - tri-axial angular velocity mean jerking motion, measured by Gyroscope, z-axis
30. timeBodyGyroscopeJerk-std()-X: numeric - tri-axial angular velocity standard deviation jerking motion, measured by Gyroscope, x-axis
31. timeBodyGyroscopeJerk-std()-Y: numeric - tri-axial angular velocity standard deviation jerking motion, measured by Gyroscope, z-axis
32. timeBodyGyroscopeJerk-std()-Z: numeric - tri-axial angular velocity standard deviation jerking motion, measured by Gyroscope, z-axis
33. timeBodyAccelerometerMagnitude-mean(): numeric - mean magnitude accelerometer, body motion component
34. timeBodyAccelerometerMagnitude-std(): numeric - standard deviation magnitude accelerometer, body motion component
35. timeGravityAccelerometerMagnitude-mean(): numeric - mean magnitude accelerometer, gravity component
36. timeGravityAccelerometerMagnitude-std(): numeric - standard deviation magnitude accelerometer, gravity component
37. timeBodyAccelerometerJerkMagnitude-mean(): numeric - mean magnitude accelerometer jerking motion, body motion component
38. timeBodyAccelerometerJerkMagnitude-std(): numeric - standard deviation magnitude accelerometer jerking motion, body motion component
39. timeBodyGyroscopeMagnitude-mean(): numeric - mean magnitude gyroscope
40. timeBodyGyroscopeMagnitude-std(): numeric - standard deviation magnitude gyroscope
41. timeBodyGyroscopeJerkMagnitude-mean(): numeric - mean magnitude gyroscope, jerking motion
42. timeBodyGyroscopeJerkMagnitude-std(): numeric - standard deviation magnitude gyroscope, jerking motion
43. frequencyBodyAccelerometer-mean()-X: numeric - mean frequency accelerometer, body motion component, x-axis
44. frequencyBodyAccelerometer-mean()-Y: numeric - mean frequency accelerometer, body motion component, y-axis
45. frequencyBodyAccelerometer-mean()-Z: numeric - mean frequency accelerometer, body motion component, z-axis
46. frequencyBodyAccelerometer-std()-X: numeric - standard deviation frequency accelerometer, body motion component, x-axis
47. frequencyBodyAccelerometer-std()-Y: numeric - standard deviation frequency accelerometer, body motion component, y-axis
48. frequencyBodyAccelerometer-std()-Z: numeric - standard deviation frequency accelerometer, body motion component, z-axis
49. frequencyBodyAccelerometer-meanFreq()-X: numeric - mean frequency accelerometer/mean frequency, body motion component, x-axis
50. frequencyBodyAccelerometer-meanFreq()-Y: numeric - mean frequency accelerometer/mean frequency, body motion component, y-axis
51. frequencyBodyAccelerometer-meanFreq()-Z: numeric - mean frequency accelerometer/mean frequency, body motion component, z-axis
52. frequencyBodyAccelerometerJerk-mean()-X: numeric - mean frequency accelerometer jerking movement, body motion component, x-axis
53. frequencyBodyAccelerometerJerk-mean()-Y: numeric - mean frequency accelerometer jerking movement, body motion component, y-axis
54. frequencyBodyAccelerometerJerk-mean()-Z: numeric - mean frequency accelerometer jerking movement, body motion component, z-axis
55. frequencyBodyAccelerometerJerk-std()-X: numeric - standard deviation frequency accelerometer jerking movement, body motion component, x-axis
56. frequencyBodyAccelerometerJerk-std()-Y: numeric - standard deviation frequency accelerometer jerking movement, body motion component, y-axis
57. frequencyBodyAccelerometerJerk-std()-Z: numeric - standard deviation frequency accelerometer jerking movement, body motion component, z-axis
58. frequencyBodyAccelerometerJerk-meanFreq()-X: numeric - mean frequency accelerometer/mean frequency jerking movement, body motion component, x-axis
59. frequencyBodyAccelerometerJerk-meanFreq()-Y: numeric - mean frequency accelerometer/mean frequency jerking movement, body motion component, y-axis
60. frequencyBodyAccelerometerJerk-meanFreq()-Z: numeric - mean frequency accelerometer/mean frequency jerking movement, body motion component, z-axis
61. frequencyBodyGyroscope-mean()-X: numeric - mean frequency gyroscope, x-axis
62. frequencyBodyGyroscope-mean()-Y: numeric - mean frequency gyroscope, y-axis
63. frequencyBodyGyroscope-mean()-Z: numeric - mean frequency gyroscope, z-axis
64. frequencyBodyGyroscope-std()-X: numeric - standard deviation frequency gyroscope, x-axis
65. frequencyBodyGyroscope-std()-Y: numeric - standard deviation frequency gyroscope, y-axis
66. frequencyBodyGyroscope-std()-Z: numeric - standard deviation frequency gyroscope, z-axis
67. frequencyBodyGyroscope-meanFreq()-X: numeric - mean frequency/mean frequency gyroscope, x-axis
68. frequencyBodyGyroscope-meanFreq()-Y: numeric - mean frequency/mean frequency gyroscope, y-axis
69. frequencyBodyGyroscope-meanFreq()-Z: numeric - mean frequency/mean frequency gyroscope, z-axis
70. frequencyBodyAccelerometerMagnitude-mean(): numeric - mean frequency magnitude accelerometer, body motion component
71. frequencyBodyAccelerometerMagnitude-std(): numeric - standard deviation frequency magnitude accelerometer, body motion component
72. frequencyBodyAccelerometerMagnitude-meanFreq(): numeric - mean frequency/mean frequency magnitude accelerometer, body motion component
73. frequencyBodyAccelerometerJerkMagnitude-mean(): numeric - mean frequency magnitude accelerometer jerking motion, body motion component
74. frequencyBodyAccelerometerJerkMagnitude-std(): numeric - standard deviation frequency magnitude accelerometer jerking motion, body motion component
75. frequencyBodyAccelerometerJerkMagnitude-meanFreq(): numeric - mean frequency magnitude/mean frequency accelerometer jerking motion, body motion component
76. frequencyBodyGyroscopeMagnitude-mean(): numeric - mean frequency magnitude gyroscope
77. frequencyBodyGyroscopeMagnitude-std(): numeric - standard deviation frequency magnitude gyroscope
78. frequencyBodyGyroscopeMagnitude-meanFreq(): numeric - mean frequency magnitude/mean frequency gyroscope
79. frequencyBodyGyroscopeJerkMagnitude-mean(): numeric - mean frequency magnitude gyroscope jerking motion
80. frequencyBodyGyroscopeJerkMagnitude-std(): numeric - standard deviation frequency magnitude gyroscope jerking motion
81. frequencyBodyGyroscopeJerkMagnitude-meanFreq(): numeric - mean frequency magnitude/mean frequency gyroscope jerking motion
82. angle(tBodyAccelerometerMean,gravity): numeric - angle information accelerometer
83. angle(tBodyAccelerometerJerkMean),gravityMean): numeric - angle information accelerometer jerking motion
84. angle(tBodyGyroscopeMean,gravityMean): numeric - angle information gyroscope
85. angle(tBodyGyroscopeJerkMean,gravityMean): numeric - angle information gyroscope jerking motion
86. angle(X,gravityMean): numeric - mean angle gravity, x-axis
87. angle(Y,gravityMean): numeric - mean angle gravity, y-axis
88. angle(Z,gravityMean): numeric - mean angle gravity, z-axis


More detailed information on obtaining the data from the authors (copied from original source):
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 



