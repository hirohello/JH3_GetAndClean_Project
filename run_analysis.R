# Download and unzipping the data folder has already been done outside R. 
# Data store as "UCI HAR Dataset" in the workind directory

# library("data.table")
# library("dplyr")

# Reading data
# Subject
TrainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
TestSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
#Label
TrainLabel <- read.table("UCI HAR Dataset/train/Y_train.txt")
TestLabel <- read.table("UCI HAR Dataset/test/Y_test.txt")
# Set
TrainSet <- read.table("UCI HAR Dataset/train/X_train.txt")
TestSet <- read.table("UCI HAR Dataset/test/X_test.txt")

# 1. Merges the taining and the test sets to create one data set
Subject <- rbind(TrainSub, TestSub)
names(Subject) <- "Subject"
Activity <- rbind(TrainLabel, TestLabel)
names(Activity) <- "ActivityCode"
Set <- rbind(TrainSet, TestSet)
Dat <- cbind(Subject, Activity, Set)

# 2. Extract only the measurements on the mean and standard deviation for each measurements
# features.txt shows which variables we need
Feat <- read.table("UCI HAR Dataset/features.txt")
names(Feat) <- c("FeatNum", "Feature")
FeatMeanStd <- Feat[grepl("mean\\(\\)|std\\(\\)", Feat[ ,"Feature"]), ]
D1 <- Dat
FeatCol <- FeatMeanStd$FeatNum +2
D1 <- D1[ , c(1, 2, FeatCol)]

# 3. Use descriptive activity names to name the activities in the data set
# activity_labels.txt shows the activity code and names
ActName <- read.table("UCI HAR Dataset/activity_labels.txt")
names(ActName) <- c("ActivityCode", "Activity")
ActName$Activity <- gsub("_", " ", ActName$Activity)
D2 <- merge(ActName, D1)
D2 <- D2[, -1]

# 4. Appropoiately labels the data set with descriptive variable names. 
D2 <- D2[, c(2, 1, 3:length(D2))]
FeatMeanStd$Feature <- as.character(FeatMeanStd$Feature)
FeatMeanStd$Feature <- gsub("[(]|[)]", "", FeatMeanStd$Feature)
FeatMeanStd$Feature <- gsub("-", "_", FeatMeanStd$Feature)
FeatMeanStd$Feature <- gsub("([a-z])([A-Z])", "\\1_\\2", FeatMeanStd$Feature)
names(D2)[3:length(D2)] <- FeatMeanStd$Feature

# 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
D3 <- aggregate(D3[3:length(D3)], by = list(D3$Subject, D3$Activity), mean)
names(D3)[1:2] <- c("Subject", "Activity")
write.table(D3, file = "TidyData.txt", row.names = FALSE)
