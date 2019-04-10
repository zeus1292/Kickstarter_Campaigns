#Reading the data



#For reading files pulled via the scraper for Kickstarter
#All files generally start with a non numbered Kickstarter.csv

ks_df=read.csv("Kickstarter.csv")
#temp = read.csv("Kickstarter001.csv")

combine_data<-function(){
  for(i in 1:15){
    base_file = "Kickstarter0"
    index=""
    if(i<10){
      index = paste("0",i,sep="")
    } else {
      index = i
    }
    index=paste(index,".csv",sep="")
    index=paste(base_file,index,sep="")
    print(index)
    temp=read.csv(index)
    ks_df=rbind(ks_df,temp)
  }
  return(ks_df)
}

ks_df=combine_data()
print(nrow(ks_df))

print(colnames(ks_df))
class(ks_df$state)

#Exploratory Data Analysis
plot(ks_df$usd_pledged,ks_df$state)


