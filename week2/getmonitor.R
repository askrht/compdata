setwd("~/prj/courses/compdata-003/compdata/week2")  
getmonitor <- function(id, directory, summarize = FALSE) {
  ## 'id' is a vector of length 1 indicating the monitor ID
  ## number. The user can specify 'id' as either an integer, a
  ## character, or a numeric.
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'summarize' is a logical indicating whether a summary of
  ## the data should be printed to the console; the default is
  ## FALSE
  
  ## Your code here
  id <- as.integer(id)
  id_str <- formatC(id, width=3, flag="0")
  file_name <- paste(directory,"/", id_str, ".csv", sep = "")
  data <- read.csv(file = file_name)
}