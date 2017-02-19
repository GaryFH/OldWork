polluntantmean<-function(directory,pollutant,id=1:332){
        #list all files
        allfiles<-list.files(directory,full.names = TRUE)
        alldata<-data.frame()
        
        #import/read files
        for(i in id){raw<-read.csv(allfiles[i],header = TRUE)
        alldata<-rbind(alldata,raw)}
        
        #find mean of none "n/a" polluntant
        return(mean(alldata[,pollutant],na.rm=TRUE))
}