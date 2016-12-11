# You should create one R script called run_analysis.R that does the following :
#   1. Merges the training and the test sets to create one data set.
#   2. Extracts only the measurements on the mean and standard deviation for each measurement.
#   3. Uses descriptive activity names to name the activities in the data set
#   4. Appropriately labels the data set with descriptive variable names.
#   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Good luck!


# Let's first import the data
# 
# Read the feature and activity names 
features <- read.table (file="Samsung_data/features.txt")
activities <- read.table(file = "Samsung_data/activity_labels.txt")

# Read the test data, format headings and combine into single df - test
test.subject <- read.table(file="Samsung_data/test/subject_test.txt")
names(test.subject) <- "subject.ID"
test.measurements <- read.table(file="Samsung_data/test/X_test.txt")
names(test.measurements) <- features$V2
test.activity <- read.table(file="Samsung_data/test/y_test.txt")
names(test.activity) <- "activity"
test <- data.frame(test.subject, test.activity, test.measurements)


# Read the train data, format headings and combine into single df - train
train.subject <- read.table(file="Samsung_data/train/subject_train.txt")
names(train.subject) <- "subject.ID"
train.measurements <- read.table(file="Samsung_data/tain/X_test.txt")
names(train.measurements) <- features$V2
train.activity <- read.table(file="Samsung_data/train/y_test.txt")
names(train.activity) <- "activity"
train <- data.frame(train.subject, train.activity, train.measurements)

#
#
#

#   1. Merges the training and the test sets to create one data set.
merged_data <- rbind(test,train)


#   2. Extracts only the measurements on the mean and standard deviation 
# for each measurement.
columns <- grep("mean|std|subject.ID|activity",names(merged_data))
selected.data <- merged_data[,columns]


#   3. Uses descriptive activity names to name the activities in the data set
for(i in 1:length(activities$V1)) selected.data$activity <- gsub(i,activities$V2[i], selected.data$activity)


#   4. Appropriately labels the data set with descriptive variable names.

#   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
