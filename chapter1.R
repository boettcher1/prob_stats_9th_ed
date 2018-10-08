# - Chapter 1 - Question 1. 
# - Chapter 1 - Question 1.  The following measurements were recorded for the
# drying time, in hours, of a certain brand of latex paint.  
# Data: /Users/andrewboettcher/Documents/UIC/STAT381/Homework/data/1.1.txt
# Read in data
chapter1_1 <- read.table("/Users/andrewboettcher/Documents/UIC/STAT381/Homework/data/1.1.txt", quote="\"")

# View the data to confirm reading in
View(chapter1_1)

# Summary stats before programming the rest of the answers
library(Hmisc)
describe(chapter1_1)

# a. What is the sample size for the above sample?
# Count of variables
count_1_1 <- nrow(chapter1_1)

# b. Calculate the sample mean for these data,
mean_1_1 <- mean(chapter1_1$V1,trim=0,na.rm=FALSE)

# c. Calculate the sample median.
median_1_1 <- median(chapter1_1$V1)

# d. Plot the data by way of a dot plot.
stripchart(chapter1_1$V1, 
           method="stack",
           main="Latex Paint Drying Time", 
           col="Red",
           offset=0.5, 
           xlab="Time (hours)")  

# e. Compute the 20% trimmed mean for the above dataset
trimmed_mean_1_1 <- mean(chapter1_1$V1,trim=.2,na.rm=FALSE)

# f. Is the sample mean for these data more or less descriptive
#    as a center of location than the trimmed mean?
# Answer: Given the small sample size and the proximity of the trimmed
# mean to the sample mean would indicate there is not much dfference

# - Chapter 1 - Question 2
# The following measurements were recorded for the
# drying time, in hours, of a certain brand of latex paint.  
# Data: /Users/andrewboettcher/Documents/UIC/STAT381/Homework/data/1.2.txt
# Read in data
chapter1_2 <- read.table("/Users/andrewboettcher/Documents/UIC/STAT381/Homework/data/1.2.txt", 
                         quote="\"",
                         header=TRUE)

# View the data to confirm reading in
View(chapter1_2)

# Summary stats before programming the rest of the answers
describe(chapter1_2)

# a. Calculate the sample mean and median for the above sample values
mean_1_2 <- mean(chapter1_2$absorbency,trim=0,na.rm=FALSE)
median_1_2 <- median(chapter1_2$absorbency, na.rm=FALSE)

# b. Compute the 10% trimmed mean
trimmed_mean_1_2 <- mean(chapter1_2$absorbency,trim=.1,na.rm=FALSE)

# c. Do a dot plot of the absorbency data
stripchart(chapter1_2$absorbency, 
           method="stack",
           main="Water Absorbency", 
           col="Red",
           offset=0.5, 
           xlab="Absorbency")  

# d. Using only the values of the mean, median, and trimmed mean,
#    do you have evidence of outliers in the data?
# Answer: Using only those three values, it would not appear there are outliers
# in the data.  The centriod of the sample appears to be stable between
# the three measures.

# - Chapter 1 - Question 3
# A certain polymer is used for evacuation systems for aircraft.  It is important
# that the polymer be resistant to the aging process.  Twenty specimans of the polymer
# were used in an experiment.  Ten were assigned randomly to the exposed to an 
# accelerated batch aging process that involved exposure to high temperatures for
# 10 days.  Measurements of tensile strength of the specimens were made, and the 
# following data were recorded on tensile strength in psi:
# Data: /Users/andrewboettcher/Documents/UIC/STAT381/Homework/data/1.3.txt
# Read in data  
chapter1_3 <- read.table("/Users/andrewboettcher/Documents/UIC/STAT381/Homework/data/1.3.txt", 
                         sep="\t",
                         quote="\"",
                         header=TRUE)

# View the data to confirm reading in
View(chapter1_3)

# Summary stats before programming the rest of the answers
library(psych)
describeBy(chapter1_3$psi,chapter1_3$accelerated_process)

