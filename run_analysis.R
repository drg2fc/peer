library(reshape)
library(reshape2)

# Load Data Sets

message("Load Data Sets")

x_train <- read.fwf(file="UCI HAR Dataset/train/X_train.txt",widths=rep(16,561),buffersize=1)
y_train <- read.fwf(file="UCI HAR Dataset/train/y_train.txt",widths=1)
x_test <- read.fwf(file="UCI HAR Dataset/test/X_test.txt",widths=rep(16,561),buffersize=1)
y_test <- read.fwf(file="UCI HAR Dataset/test/y_test.txt",widths=1)
subject_train <- read.fwf(file="UCI HAR Dataset/train/subject_train.txt",widths=2)
subject_test <- read.fwf(file="UCI HAR Dataset/test/subject_test.txt",widths=2)

# Merge Training and Test Sets

message("Merge Data Sets")

x <- rbind(x_train,x_test)
y <- rbind(y_train,y_test)

subject <- rbind(subject_train,subject_test)
names(subject) <- "subject"

features <- read.csv(file="UCI HAR Dataset/features.txt",sep=" ",header=FALSE)
names(features) <- c("id","feature")
activity_labels <- read.csv(file="UCI HAR Dataset/activity_labels.txt",sep=" ",header=FALSE)
names(activity_labels) <- c("id","activity")

names(x) <- features[,2]
names(y) <- "activity_id"

# Extract Mean and Standard Deviation

message("Extract Mean and Standard Deviation")

x.mean <- apply(x,FUN=mean,MARGIN=2)
x.sd <- apply(x,FUN=sd,MARGIN=2)

# Merge Data Set

subject_y_x <- cbind(subject,y,x)
ds <- merge(x=subject_y_x,y=activity_labels,by.x="activity_id",by.y="id",all=FALSE)

# Tidy Data Sets

message("Build Tidy Data Sets")

ds.melt <- melt(ds,id=c("subject","activity"),measure.vars=features[,2])
ds.tidy <- dcast(ds.melt,subject + activity ~ variable,fun.aggregate=mean)

ds.tidy
