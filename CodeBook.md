##Code Book 
The run_analysis.R script aims to generate a tidy dataset from the Human Activity Recognition Using Smartphones Dataset

### Details about the Raw Data from the Human Activity Recognition Using Smartphones Dataset

The following data is available in disparate sources within the dataset
  1. Data Pertaining to a Training Group
    a. Subjects who are part of the training group. - subject_train.txt
    b. 6 different Activities performed by the subjects in numeric form - y_train.txt.
    c. 561 different Measurements pertaining to the 6 different activities using the accelerometer and gyroscope. - X_Train.text
  2. Data Pertaining to a training group
     a. Subjects who are part of the test group. - subject_test.txt
    b. 6 different Activities performed by the subjects in numeric form - y_test.txt.
    c. 561 different Measurements pertaining to the 6 different activities using the accelerometer and gyroscope. - X_Test.text

### Transformations

The script will perform the following transformations on the data above
  a. Merge the subjects , activities and their measurements in the test and train groups into one unified dataset.
  b. Convert the activity identifiers in numeric form to a more descriptive form using the equivalent descriptions available in the activity_labels file
  c. Obtain only the means and the standard deviation measurements.
  d. Calculate the averages of the means and the standard deviation measurements.
  e. Convert the cryptic names of the 561 different feature measurements to friendly names in camelCase. The names were obtained by making the following transformations
  "tBody" >> "timeDomainBody"
  "fBody" >> "frequencyDomainBody"
  "tGravity" >> "timeDomainGravity"
  "Acc" >> "Accelerometer"
  "Gyro" >> "Gyroscope"
  "Mag">> "Magnitude"
  "BodyBody" >> "Body"
  "..X" >> "XAxis"
  "..Y" >> "YAxis"
  "..Z" >> "ZAxis"
  ".mean." >> "Mean"
  ".std.">> "StandardDeviation"
  Any remaining "." were removed. 

### Details about the tidy data set
sub
  Subject
act
  Activity performed by Subject
timeDomainBodyAccelerometerMeanXAxis
timeDomainBodyAccelerometerMeanYAxis                          
timeDomainBodyAccelerometerMeanZAxis        
  Average of Mean of Body Acceleration measured along X,Y,Z axis using accelerometer
timeDomainBodyAccelerometerStandardDeviationXAxis
timeDomainBodyAccelerometerStandardDeviationYAxis             
timeDomainBodyAccelerometerStandardDeviationZAxis             
  Average of Standard Deviation of Body Acceleration measured along X,Y,Z axis using accelerometer
timeDomainGravityAccelerometerMeanXAxis                        
timeDomainGravityAccelerometerMeanYAxis                       
timeDomainGravityAccelerometerMeanZAxis        
  Average of Mean of Gravity Acceleration measured along X,Y,Z axis using accelerometer
timeDomainGravityAccelerometerStandardDeviationXAxis
timeDomainGravityAccelerometerStandardDeviationYAxis          
timeDomainGravityAccelerometerStandardDeviationZAxis         
  Average of Standard Deviation of Gravity Acceleration measured along X,Y,Z axis using accelerometer
timeDomainBodyAccelerometerJerkMeanXAxis                     r
timeDomainBodyAccelerometerJerkMeanYAxis                      
timeDomainBodyAccelerometerJerkMeanZAxis
  Average of Mean of Body Jerk Signal measured along X,Y,Z axis using accelerometer
timeDomainBodyAccelerometerJerkStandardDeviationXAxis         
timeDomainBodyAccelerometerJerkStandardDeviationYAxis         
timeDomainBodyAccelerometerJerkStandardDeviationZAxis         
   Average of Standard Deviation of Body Jerk Signal measured along X,Y,Z axis using accelerometer
timeDomainBodyGyroscopeMeanXAxis                              
timeDomainBodyGyroscopeMeanYAxis                              
timeDomainBodyGyroscopeMeanZAxis
  Average of Mean of Body Acceleration measured along X,Y,Z axis using gyroscope
timeDomainBodyGyroscopeStandardDeviationXAxis                 
timeDomainBodyGyroscopeStandardDeviationYAxis                 
timeDomainBodyGyroscopeStandardDeviationZAxis                 
  Average of Standard Deviation of Body Acceleration measured along X,Y,Z axis using gyroscope
timeDomainBodyGyroscopeJerkMeanXAxis                          
timeDomainBodyGyroscopeJerkMeanYAxis                          
timeDomainBodyGyroscopeJerkMeanZAxis
    Average of Mean of Body Jerk Signal measured along X,Y,Z axis using gyroscope
timeDomainBodyGyroscopeJerkStandardDeviationXAxis             
timeDomainBodyGyroscopeJerkStandardDeviationYAxis             
timeDomainBodyGyroscopeJerkStandardDeviationZAxis             
    Average of Standard Deviation of Body Jerk Signal measured along X,Y,Z axis using gyroscope
timeDomainBodyAccelerometerMagnitudeMean             
    Average of Mean of Signal Magnitude of Body Acceleration measured along X,Y,Z axis using accelerometer
timeDomainBodyAccelerometerMagnitudeStandardDeviation         
    Average of Standard Deviation of Signal Magnitude of Body Acceleration measured along X,Y,Z axis using accelerometer
timeDomainGravityAccelerometerMagnitudeMean
    Average of Mean of Signal Magnitude of Gravity Acceleration measured along X,Y,Z axis using accelerometer
timeDomainGravityAccelerometerMagnitudeStandardDeviation
  Average of Standard Deviation of Signal Magnitude of Gravity Acceleration measured along X,Y,Z axis using accelerometer
timeDomainBodyAccelerometerJerkMagnitudeMean  
   Average of Mean of Signal Magnitude of Body Jerk Signal measured along X,Y,Z axis using accelerometer
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation     
     Average of Standard Deviation of Signal Magnitude of Body Jerk Signal measured along X,Y,Z axis using accelerometer
timeDomainBodyGyroscopeMagnitudeMean
    Average of Mean of Signal Magnitude of Body Acceleration measured along X,Y,Z axis using gyroscope
timeDomainBodyGyroscopeMagnitudeStandardDeviation 
    Average of Standard Deviation of Signal Magnitude of Body Acceleration measured along X,Y,Z axis using gyroscope
timeDomainBodyGyroscopeJerkMagnitudeMean
    Average of Mean of Signal Magnitude of Body Jerk Signal measured along X,Y,Z axis using gyroscope
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation      
    Average of Standard Deviation of Signal Magnitude of Body Acceleration measured along X,Y,Z axis using gyroscope
frequencyDomainBodyAccelerometerMeanXAxis                     
frequencyDomainBodyAccelerometerMeanYAxis                     
frequencyDomainBodyAccelerometerMeanZAxis
  Average of Mean of Frequency of Body Acceleration measured along X,Y,Z axis using accelerometer
frequencyDomainBodyAccelerometerStandardDeviationXAxis        
frequencyDomainBodyAccelerometerStandardDeviationYAxis        
frequencyDomainBodyAccelerometerStandardDeviationZAxis
    Average of Standard Deviation of Frequency of Body Acceleration measured along X,Y,Z axis using accelerometer
frequencyDomainBodyAccelerometerJerkMeanXAxis                 
frequencyDomainBodyAccelerometerJerkMeanYAxis                 
frequencyDomainBodyAccelerometerJerkMeanZAxis
    Average of Mean of Frequency of Body Jerk Signal measured along X,Y,Z axis using accelerometer
frequencyDomainBodyAccelerometerJerkStandardDeviationXAxis    
frequencyDomainBodyAccelerometerJerkStandardDeviationYAxis    
frequencyDomainBodyAccelerometerJerkStandardDeviationZAxis    
   Average of Standard Deviation of Frequency of Body Jerk Signal measured along X,Y,Z axis using accelerometer
frequencyDomainBodyGyroscopeMeanXAxis                         
frequencyDomainBodyGyroscopeMeanYAxis                         
frequencyDomainBodyGyroscopeMeanZAxis
    Average of Mean of Frequency of Body Acceleration measured along X,Y,Z axis using gyroscope
frequencyDomainBodyGyroscopeStandardDeviationXAxis            
frequencyDomainBodyGyroscopeStandardDeviationYAxis            
frequencyDomainBodyGyroscopeStandardDeviationZAxis   
   Average of Standard Deviation of Frequency of Body Acceleration measured along X,Y,Z axis using gyroscope
frequencyDomainBodyAccelerometerMagnitudeMean 
  Average of Mean of Magnitude of Frequency of Body Acceleration measured along X,Y,Z axis using accelerometer
frequencyDomainBodyAccelerometerMagnitudeStandardDeviation    
   Average of Standard Deviation of Magnitude of Frequency of Body Acceleration measured along X,Y,Z axis using accelerometer
frequencyDomainBodyAccelerometerJerkMagnitudeMean         
  Average of Mean of Magnitude of Frequency of Body Jerk Signal measured along X,Y,Z axis using accelerometer
frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
   Average of Standard Deviation of Magnitude of Frequency of Body Jerk Signal measured along X,Y,Z axis using accelerometer
frequencyDomainBodyGyroscopeMagnitudeMean 
   Average of Mean of Magnitude of Frequency of Body Acceleration measured along X,Y,Z axis using gyroscope
frequencyDomainBodyGyroscopeMagnitudeStandardDeviation        
   Average of Standard Deviation of Magnitude of Frequency of Body Acceleration measured along X,Y,Z axis using gyroscope
frequencyDomainBodyGyroscopeJerkMagnitudeMean                 
   Average of Mean of Magnitude of Frequency of Body Jerk Signal measured along X,Y,Z axis using gyroscope
frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation 
  Average of Standard Deviation of Magnitude of Frequency of Body Jerk Signal measured along X,Y,Z axis using gyroscope
  
  