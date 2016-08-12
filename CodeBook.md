Codebook for summarised UCI HAR dataset
================

This file describes the variables used in the summarised dataset. It is largely based on [features\_info.txt](data/UCI%20HAR%20Dataset/features_info.txt), omitting the variables that have not been included in the output.

Variable names
--------------

The first two variables of the dataset describe the `subject` and the `activity`. The other variable names are composed of four parts:

1.  One-letter prefix `t` or `f`: is the variable in the time (`t`) or frequency (`f`) domain
2.  Parameter description: is the data describing accelerometer or gyroscopic data, is it describing body or gravity, and is it describing jerks. When the magnitude of the parameter is given it is denoted with `Mag`.
3.  Statistic: delimited by dashes is the name of the statistic describing the parameter. Either mean (arithmetic average) or std (standard deviation)
4.  Directional component: Whether the parameter concerns X, Y or Z data. Magnitudes give an absolute value in all directions, denoted by direction (X,Y,Z).

Units
-----

As per the notes in the [README.txt](data/UCI%20HAR%20Dataset/README.txt), all data has been normalised to a range of (-1, 1). Summarisation of the data has not affected the units of the data, as only the mean has been calculated for all variables per subject/activity combination.

Details
-------

<table style="width:107%;">
<colgroup>
<col width="29%" />
<col width="16%" />
<col width="27%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Variable name</th>
<th align="left">Domain</th>
<th align="left">Parameter</th>
<th align="left">Statistic</th>
<th align="left">Direction</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">subject</td>
<td align="left">--</td>
<td align="left">Subject id, number</td>
<td align="left">--</td>
<td align="left">--</td>
</tr>
<tr class="even">
<td align="left">activity</td>
<td align="left">--</td>
<td align="left">Activity description</td>
<td align="left">--</td>
<td align="left">--</td>
</tr>
<tr class="odd">
<td align="left">tBodyAcc-mean-X</td>
<td align="left">time</td>
<td align="left">Body acceleration</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">tBodyAcc-mean-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">tBodyAcc-mean-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">tBodyAcc-std-X</td>
<td align="left">time</td>
<td align="left">Body acceleration</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">tBodyAcc-std-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">tBodyAcc-std-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">tGravityAcc-mean-X</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">tGravityAcc-mean-Y</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">tGravityAcc-mean-Z</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">tGravityAcc-std-X</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">tGravityAcc-std-Y</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">tGravityAcc-std-Z</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerk-mean-X</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerk-mean-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerk-mean-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerk-std-X</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerk-std-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerk-std-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyro-mean-X</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">tBodyGyro-mean-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyro-mean-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">tBodyGyro-std-X</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyro-std-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">tBodyGyro-std-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerk-mean-X</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks)</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerk-mean-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks)</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerk-mean-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks)</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerk-std-X</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks)</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerk-std-Y</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks)</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerk-std-Z</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks)</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccMag-mean</td>
<td align="left">time</td>
<td align="left">Body acceleration (magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,X)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccMag-std</td>
<td align="left">time</td>
<td align="left">Body acceleration (magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,X)</td>
</tr>
<tr class="odd">
<td align="left">tGravityAccMag-mean</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration (magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,X)</td>
</tr>
<tr class="even">
<td align="left">tGravityAccMag-std</td>
<td align="left">time</td>
<td align="left">Gravitational acceleration (magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,X)</td>
</tr>
<tr class="odd">
<td align="left">tBodyAccJerkMag-mean</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks, magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">tBodyAccJerkMag-std</td>
<td align="left">time</td>
<td align="left">Body acceleration (jerks, magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroMag-mean</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroMag-std</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">tBodyGyroJerkMag-mean</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks, magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">tBodyGyroJerkMag-std</td>
<td align="left">time</td>
<td align="left">Body acceleration (gyroscopic, jerks, magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-mean-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">fBodyAcc-mean-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-mean-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">fBodyAcc-std-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-std-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">fBodyAcc-std-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-meanFreq-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">mean frequency</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">fBodyAcc-meanFreq-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">mean frequency</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">fBodyAcc-meanFreq-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration</td>
<td align="left">mean frequency</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-mean-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerk-mean-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-mean-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerk-std-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-std-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerk-std-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-meanFreq-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean frequency</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccJerk-meanFreq-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean frequency</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">fBodyAccJerk-meanFreq-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks)</td>
<td align="left">mean frequency</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-mean-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">fBodyGyro-mean-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-mean-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">fBodyGyro-std-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">standard deviation</td>
<td align="left">X</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-std-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">standard deviation</td>
<td align="left">Y</td>
</tr>
<tr class="even">
<td align="left">fBodyGyro-std-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">standard deviation</td>
<td align="left">Z</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-meanFreq-X</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean frequency</td>
<td align="left">X</td>
</tr>
<tr class="even">
<td align="left">fBodyGyro-meanFreq-Y</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean frequency</td>
<td align="left">Y</td>
</tr>
<tr class="odd">
<td align="left">fBodyGyro-meanFreq-Z</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic)</td>
<td align="left">mean frequency</td>
<td align="left">Z</td>
</tr>
<tr class="even">
<td align="left">fBodyAccMag-mean</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">fBodyAccMag-std</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">fBodyAccMag-meanFreq</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (magnitude)</td>
<td align="left">mean frequency</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyAccJerkMag-mean</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks, magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyAccJerkMag-std</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks, magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyAccJerkMag-meanFreq</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (jerks, magnitude)</td>
<td align="left">mean frequency</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyGyroMag-mean</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic, magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyGyroMag-std</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic, magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyGyroMag-meanFreq</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic, magnitude)</td>
<td align="left">mean frequency</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyGyroJerkMag-mean</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic, jerks, magnitude)</td>
<td align="left">mean</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="even">
<td align="left">fBodyBodyGyroJerkMag-std</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic, jerks, magnitude)</td>
<td align="left">standard deviation</td>
<td align="left">(X,Y,Z)</td>
</tr>
<tr class="odd">
<td align="left">fBodyBodyGyroJerkMag-meanFreq</td>
<td align="left">frequency</td>
<td align="left">Body acceleration (gyroscopic, jerks, magnitude)</td>
<td align="left">mean frequency</td>
<td align="left">(X,Y,Z)</td>
</tr>
</tbody>
</table>
