corr <- function(directory, threshold = 0) {
  id <- 1:332
  result <- vector()
  counter <- 1
  for(i in seq_along(id)) {
    filename <- paste(directory, "\\", formatC(id[i], width = 3, flag = "0"), ".csv", sep = "")
    data <- read.csv(filename)
    compl <- complete.cases(data)
    if (length(compl[compl == TRUE]) > threshold) {
      result[counter] <- cor(data[compl,]$sulfate, data[compl,]$nitrate)
      counter <- counter + 1
    }
  }
  result
}