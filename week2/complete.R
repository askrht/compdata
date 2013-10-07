complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
  nobs = mapply(function(x) sum(complete.cases(getmonitor(x, directory))), id)
  data <- data.frame(id, nobs)
}

## test
# id <- c(2,4,8,10,12)
# print(complete("specdata", id))
