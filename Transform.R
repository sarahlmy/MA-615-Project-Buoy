```{r}
#setting data set
S165_air <- read.csv("TAO_T8S165E_M_AIRT_daily.ascii", sep=" ", header = FALSE)
S165_air <- S165_air[-c(1,2),-c(4:14)]
S165_sea <- read.csv("TAO_T8S165E_M_SST_daily.ascii", sep=" ", header = FALSE)
S165_sea <- S165_sea[-c(1,2),-c(4:14)]
S165_air.tidy <- S165_air %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:")
S165_sea.tidy <- S165_sea %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:"，V1 != "Depth")

colnames(S165_sea.tidy) <- c("date_time","time_diff","sea_temp")
colnames(S165_air.tidy) <- c("date_time","air_temp")

S165_air.tidy[,1]<-as.character(S165_air.tidy[,1])
S165_air.tidy[,2]<-as.character(S165_air.tidy[,2])
S165_sea.tidy[,1]<-as.character(S165_sea.tidy[,1])
S165_sea.tidy[,2]<-as.character(S165_sea.tidy[,2])
S165_sea.tidy[,3]<-as.character(S165_sea.tidy[,3])


E165S8_temp<-full_join(S165_sea.tidy,S165_air.tidy, by ="date_time", copy = FALSE)

```

```{r}
N165_air <- read.csv("TAO_T8N165E_M_AIRT_daily.ascii", sep=" ", header = FALSE)
N165_air <- N165_air[-c(1,2),-c(4:14)]
N165_sea <- read.csv("TAO_T8N165E_M_SST_daily.ascii", sep=" ", header = FALSE)
N165_sea <- N165_sea[-c(1,2),-c(4:14)]
N165_air.tidy <- N165_air %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:")
N165_sea.tidy <- N165_sea %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:"，V1 != "Depth")

colnames(N165_sea.tidy) <- c("date_time","time_diff","sea_temp")
colnames(N165_air.tidy) <- c("date_time","air_temp")

N165_air.tidy[,1]<-as.character(N165_air.tidy[,1])
N165_air.tidy[,2]<-as.character(N165_air.tidy[,2])
N165_sea.tidy[,1]<-as.character(N165_sea.tidy[,1])
N165_sea.tidy[,2]<-as.character(N165_sea.tidy[,2])
N165_sea.tidy[,3]<-as.character(N165_sea.tidy[,3])


E165N8_temp<-full_join(N165_sea.tidy,N165_air.tidy, by ="date_time", copy = FALSE)

```

```{r}
N110_air <- read.csv("TAO_T8N110W_M_AIRT_daily.ascii", sep=" ", header = FALSE)
N110_air <- N110_air[-c(1,2),-c(4:14)]
N110_sea <- read.csv("TAO_T8N110W_M_SST_daily.ascii", sep=" ", header = FALSE)
N110_sea <- N110_sea[-c(1,2),-c(4:14)]
N110_air.tidy <- N110_air %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:")
N110_sea.tidy <- N110_sea %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:"，V1 != "Depth")

colnames(N110_sea.tidy) <- c("date_time","time_diff","sea_temp")
colnames(N110_air.tidy) <- c("date_time","air_temp")

N110_air.tidy[,1]<-as.character(N110_air.tidy[,1])
N110_air.tidy[,2]<-as.character(N110_air.tidy[,2])
N110_sea.tidy[,1]<-as.character(N110_sea.tidy[,1])
N110_sea.tidy[,2]<-as.character(N110_sea.tidy[,2])
N110_sea.tidy[,3]<-as.character(N110_sea.tidy[,3])


W110N8_temp<-full_join(N110_sea.tidy,N110_air.tidy, by ="date_time", copy = FALSE)
```

```{r}
S110_air <- read.csv("TAO_T8S110W_M_AIRT_daily.ascii", sep=" ", header = FALSE)
S110_air <- S110_air[-c(1,2),-c(4:14)]
S110_sea <- read.csv("TAO_T8S110W_M_SST_daily.ascii", sep=" ", header = FALSE)
S110_sea <- S110_sea[-c(1,2),-c(4:14)]
S110_air.tidy <- S110_air %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:")
S110_sea.tidy <- S110_sea %>% filter(V1 != "Height",V1!="YYYYMMDD", V1 != "Deployment:"，V1 != "Depth")

colnames(S110_sea.tidy) <- c("date_time","time_diff","sea_temp")
colnames(S110_air.tidy) <- c("date_time","air_temp")

S110_air.tidy[,1]<-as.character(S110_air.tidy[,1])
S110_air.tidy[,2]<-as.character(S110_air.tidy[,2])
S110_sea.tidy[,1]<-as.character(S110_sea.tidy[,1])
S110_sea.tidy[,2]<-as.character(S110_sea.tidy[,2])
S110_sea.tidy[,3]<-as.character(S110_sea.tidy[,3])


W110S8_temp<-full_join(S110_sea.tidy,S110_air.tidy, by ="date_time", copy = FALSE)
```