complete <- function(directory, id = 1:332) {
    nobs = vector("numeric")
    for(i in id) {
        filename = paste(directory,"/",formatC(i,width=3,flag="0"),".csv",sep="")
        table = read.csv(filename)
        nobs <- c(nobs,sum(complete.cases(table)))
    }
    data.frame(id = id, nobs = nobs)
}
