# @knitr setup
setwd("/workspace/UA/mfleonawicz/leonawicz/projects/SNAPQAQC/data/final")
#library(plyr)
library(dplyr)
library(parallel)
n.cores <- 32

domain <- "akcan2km"
#domain <- "world10min"
decades.gcm <- c(2010, 2040, 2060, 2090)
decades.cru <- c(1960, 1970, 1980)
files.gcm <- list.files(file.path("city_files_GCM", domain), pattern=".RData$", full=TRUE)
files.cru <- list.files(file.path("city_files_CRU", domain), pattern=".RData$", full=TRUE)

# @ knitr function
f <- function(i, files, decades, phase){
	print(length(files)-i)
	load(files[i], envir=environment())
	if(phase=="CRU 3.1") city.dat <- data.frame(Phase="CRU 3.1", Scenario="CRU 3.1", Model="CRU 3.1", city.cru.dat)
	city.dat %>% filter(Phase==phase, Decade %in% decades) %>% group_by(Location, Scenario, Var, Month) -> city.dat
	if(phase!="CRU 3.1") city.dat <- group_by(city.dat, Decade, add=TRUE)
	city.dat %>% summarise(Min=min(Val), Mean=mean(Val), Max=max(Val), SD=sd(Val)) %>%
		mutate(Mean=ifelse(Var=="Precipitation", round(Mean), round(Mean, 1)), SD=round(SD, 1)) %>%	as.data.frame() -> city.dat
	if(phase=="CRU 3.1") city.dat$Decade <- paste(decades[1], tail(decades, 1) + 9, sep="-")
	city.dat <- arrange(city.dat, Location, Scenario, Var, Decade, Month)
	city.dat
}

# @knitr process
system.time( out <- mclapply(1:length(files.gcm), f, files=files.gcm, decades=decades.gcm, phase="CMIP5", mc.cores=n.cores) )
#system.time( d1 <- do.call(rbind, out) )
#system.time( d2 <- ldply(out, data.frame) )
#system.time( d3 <- rbind.fill(out) )
system.time( d <- as.data.frame(data.table::rbindlist(out)) )
d$Decade <- paste(d$Decade, as.numeric(d$Decade) + 9, sep="-")

#identical(d1, d2)
#identical(d1, d3)
#identical(d1, d)

system.time( out <- mclapply(1:length(files.cru), f, files=files.cru, decades=decades.cru, phase="CRU 3.1", mc.cores=n.cores) )
#system.time( d1 <- do.call(rbind, out) )
#system.time( d2 <- ldply(out, data.frame) )
#system.time( d3 <- rbind.fill(out) )
system.time( d.cru <- as.data.frame(data.table::rbindlist(out)) )
d.cru <- d.cru[,c(1:4,9,5:8)]

# @knitr save
locs <- unique(d$Location)
file.2km <- "cc4lite/cc4lite_akcan2km.RData"
file.10min <- "cc4lite/cc4lite_world10min.RData"
file.cru.2km <- "cc4lite/cc4lite_cru31_akcan2km.RData"
file.cru.10min <- "cc4lite/cc4lite_cru31_world10min.RData"
if(domain=="akcan2km"){
	d.2km <- d
	d.cru.2km <- d.cru
	save(d.2km, locs, file=file.2km)
	save(d.2km, d.cru.2km, locs, file=file.cru.2km)
} else if(domain=="world10min") {
	d.10min <- d
	d.cru.10min <- d.cru
	save(d.10min, locs, file=file.10min)
	save(d.10min, d.cru.10min, locs, file=file.cru.10min)
}

if(all(file.exists(file.cru.2km, file.cru.10min))){
	load(file.cru.2km)
	load(file.cru.10min)
	save(d.2km, d.10min, locs, file="cc4lite/cc4lite_2km10min.RData")
	save(d.2km, d.10min, d.cru.2km, d.cru.10min, locs, file="cc4lite/cc4lite_cru31_2km10min.RData")
}
