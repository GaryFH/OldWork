pollutantmean<-function(directory,pollutant,id=1:332){
#list all files
        allfiles<-list.files(path=directory,pattern=".csv",full.names = TRUE)
        alldata<-numeric()
        
        
        #import/read files&count full rows of data
        for(i in id){
                raw<-read.csv(allfiles[i])
        alldata<-c(alldata,raw[[pollutant]])
        }
        mean(alldata,na.rm = TRUE)
}
