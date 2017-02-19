complete<-function(directory,id=1:332){
#list all files
        allfiles<-list.files(directory,pattern=".csv",full.names = TRUE)
        alldata<-numeric()
        
        
        #import/read files&count full rows of data
        for(i in id){
                raw<-read.csv(allfiles[i])
        alldata<-c(alldata,sum(complete.cases(raw)))}
        alldata<-data.frame(alldata)
        return(alldata)
}
