pollutantmean <- function(directory, pollutant, id = 1:332) {
  value_vector <- vector()
  for(i in id) {
    filename <- paste(directory, "\\", formatC(i, width = 3, flag = "0"), ".csv", sep = "")
    data <- read.csv(filename)
    value_vector <- c(value_vector, data[[pollutant]])
  }
  round(mean(value_vector, na.rm = TRUE), digits = 3)
}