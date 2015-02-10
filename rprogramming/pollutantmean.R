pollutantmean <- function(directory, pollutant, id = 1:332) {
    total <- vector("numeric")
    for(i in id) {
        filename = paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep="")
        table = read.csv(filename)
        validValues = !is.na(table[,pollutant])
        total <- c(total,table[validValues,pollutant])
    }
    mean(total)
}
