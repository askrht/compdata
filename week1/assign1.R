setwd("~/prj/courses/compdata-003/compdata/week1")
data = read.csv(file = "hw1_data.csv")

# What are the column names of the dataset?
colnames(data)

# Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
head(data,2)

# How many observations (i.e. rows) are in this data frame?
nrow(data)

# Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
tail(data,2)

# What is the value of Ozone in the 47th row?
data[47,'Ozone']

# How many missing values are in the Ozone column of this data frame?
dim(data[is.na(data$Ozone),])[1]

# Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
sub = data[data$Ozone > 31 & data$Temp > 90, ]
mean(sub$Solar.R, na.rm = T)

# What is the mean of "Temp" when "Month" is equal to 6?
sub = data[data$Month == 6, ]
mean(sub$Temp, na.rm = T)

# What was the maximum ozone value in the month of May (i.e. Month = 5)?
sub = data[data$Month == 5,'Ozone']
max(sub, na.rm=T)
