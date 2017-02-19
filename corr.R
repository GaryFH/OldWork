corr<-function(directory,threshold=0){
        #list all files
        allfiles<-list.files(directory,full.names = TRUE)
        alldata<-vector(mode="numeric", length=0)
        for(i in 1:length(allfiles))
        #read file
               {raw<-read.csv(allfiles[i],header = TRUE) 
        #get rid of na
               raw<-raw[complete.cases(raw),]
               csum<-nrow(raw)
               if(csum>threshold){
                       alldata<-c(alldata,cor(raw$nitrate,raw$sulfate))
                       }
        }
        
   return(alldata)}

