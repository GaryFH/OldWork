complete<-function(directory,id=1:332){
#list all files
        allfiles<-list.files(directory,full.names = TRUE)
        alldata<-data.frame()
                      
#import/read files&count full rows of data
        for(i in id){
        raw<-read.csv(allfiles[i],header = TRUE)
        raw<-na.omit(raw)
        fullrows<-nrow(raw)
        alldata<-rbind(alldata,data.frame(i,fullrows))}
        
        return(alldata)
}
