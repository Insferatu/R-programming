complete <- function(directory, id = 1:332) {
  filenames <- character(length(id))
  nobs <- numeric(length(id))
  for(i in seq_along(id)) {
    filename <- paste(directory, "\\", formatC(id[i], width = 3, flag = "0"), ".csv", sep = "")
    data <- read.csv(filename)
    compl <- complete.cases(data)
    filenames[i] <- id[i]
    nobs[i] <- nrow(data[compl, ])
  }
  data.frame(id = filenames, nobs = nobs)
}