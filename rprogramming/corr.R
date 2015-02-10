corr <- function(directory, threshold = 0) {
    files = list.files(directory,full.names=TRUE)
    result = vector("numeric")
    for(f in files) {
        table = read.csv(f)
        completeRows = complete.cases(table)
        complete = sum(completeRows)
        if(complete > threshold) {
            sulfate = table[completeRows,"sulfate"]
            nitrate = table[completeRows,"nitrate"]
            result <- c(result, cor(sulfate,nitrate))
        }
    }
    result
}
