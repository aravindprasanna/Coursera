## This script obtains data collected from the accelerometers from the 
## Samsung Galaxy S smartphone as input and creates a tidy data set
## as output 
## Prework: set up a preliminary set of column names. Use col.classes to prevent
## conversion
colNames <- read.table("features.txt",colClasses = "character")
## Set up Train dataset
## 1. Read Train Subjects
sub <- scan("subject_train.txt")
## 2. Read Train Activities
act <- scan("y_train.txt")
## 3. Read Train Data
train <- read.table("X_train.txt",col.names = colNames$V2)
## Combine Subjects, Activities and Train Data
train <- cbind(sub,act,train)
## Set up Test dataset
## 1. Read Test Subjects
sub <- scan("subject_test.txt")
## 2. Read Test Activiti
act <- scan("y_test.txt")
## 3. Read Test Data
test <- read.table("X_test.txt", col.names = colNames$V2)
## Combine Subjects, Activities and Test Data
test <- cbind(sub,act,test)
## Step 1 Merge the Train and Test Datasets
workingsub <- rbind(train,test)
## Get the measurements relevant to mean and standard deviation.
## 1. Get all the column names of the working subset
colNames <- names(workingsub)
## 2. Get the indices of mean measurements
meanCols <- grep("mean\\.",colNames)
## 3. Get the indices of standard deviation measurements
stdCols <- grep("std", colNames)
## 4. Merge the mean and standard deviation index vectors along with
## first and second columns.
reqCols <- c(1,2,meanCols,stdCols)
## 5. Lets order the columsn in ascending.
reqCols <- sort(reqCols)
## Step 2 Get the required mean and standard deviation columns along with
## subjects and activities
workingsub <- workingsub[,reqCols]
## Use descriptive activity names to name the activities in the data set
## 1. Make a list of the activity names
actNames <- c("WALKING","WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
## 2. Get the levels of the activities in the dataset
x <- as.factor(workingsub$act)
## Step 3. Relabel the levels to the descriptive activities
levels(x) <- actNames
## 1. Replace activities column with X
workingsub$act <- as.character(x)
## Step 4 Appropriately label the data set with descriptive variable names
x <- names(workingsub)
x <- gsub("tBody", "timeDomainBody",x)
x <- gsub("tBody", "timeDomainBody",x)
x <- gsub("fBody", "frequencyDomainBody",x)
x <- gsub("tGravity", "timeDomainGravity",x)
x <- gsub("Acc", "Accelerometer",x)
x <- gsub("Gyro", "Gyroscope",x)
x <- gsub("Mag", "Magnitude",x)
x <- gsub("BodyBody", "Body",x)
x <- gsub("\\.\\.X", "XAxis",x)
x <- gsub("\\.\\.Y", "YAxis",x)
x <- gsub("\\.\\.Z", "ZAxis",x)
x <- gsub("\\.mean\\.", "Mean",x)
x <- gsub("\\.std\\.", "StandardDeviation",x)
x <- gsub("\\.", "",x)
## Step 5 Creates a second, independent tidy data set with the average of 
##each variable for each activity and each subject. 
colnames(workingsub) <- x
x <- names(workingsub)
y <- x[3:68]
output <- ddply(workingsub,c("sub","act"),function(z) colMeans(z[y]))
## In conclusion, write the output file 
write.table(output, "output.txt", row.names = FALSE)