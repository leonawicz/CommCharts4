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
files.cru31 <- list.files(file.path("city_files_CRU31", domain), pattern=".RData$", full=TRUE)
files.cru32 <- list.files(file.path("city_files_CRU32", domain), pattern=".RData$", full=TRUE)

# @knitr function
f <- function(i, files, decades, phase){
	print(length(files)-i)
	load(files[i], envir=environment())
	if(substr(phase, 1, 3)=="CRU") city.dat <- data.frame(Phase=phase, Scenario=phase, Model=phase, city.cru.dat)
	city.dat %>% filter(Phase==phase, Decade %in% decades) %>% group_by(Location, Scenario, Var, Month) -> city.dat
	if(substr(phase, 1, 3)!="CRU") city.dat <- group_by(city.dat, Decade, add=TRUE)
	city.dat %>% summarise(Min=min(Val), Mean=mean(Val), Max=max(Val), SD=sd(Val)) %>%
		mutate(Mean=ifelse(Var=="Precipitation", round(Mean), round(Mean, 1)), SD=round(SD, 1)) %>%	as.data.frame() -> city.dat
	if(substr(phase, 1, 3)=="CRU") city.dat$Decade <- paste(decades[1], tail(decades, 1) + 9, sep="-")
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

out <- mclapply(1:length(files.cru31), f, files=files.cru31, decades=decades.cru, phase="CRU 3.1", mc.cores=n.cores)
d.cru31 <- as.data.frame(data.table::rbindlist(out))
d.cru31 <- d.cru31[,c(1:4,9,5:8)]

out <- mclapply(1:length(files.cru32), f, files=files.cru32, decades=decades.cru, phase="CRU 3.2", mc.cores=n.cores)
d.cru32 <- as.data.frame(data.table::rbindlist(out))
d.cru32 <- d.cru32[,c(1:4,9,5:8)]

# @knitr save
locs <- unique(d$Location)
file.2km <- "cc4lite/cc4lite_akcan2km.RData"
file.10min <- "cc4lite/cc4lite_world10min.RData"
file.cru31.2km <- "cc4lite/cc4lite_cru31_akcan2km.RData"
file.cru31.10min <- "cc4lite/cc4lite_cru31_world10min.RData"
file.cru32.2km <- "cc4lite/cc4lite_cru32_akcan2km.RData"
file.cru32.10min <- "cc4lite/cc4lite_cru32_world10min.RData"
if(domain=="akcan2km"){
	d.2km <- d
	save(d.2km, locs, file=file.2km)
	d.cru31.2km <- d.cru31
	save(d.2km, d.cru31.2km, locs, file=file.cru31.2km)
	d.cru32.2km <- d.cru32
	save(d.2km, d.cru32.2km, locs, file=file.cru32.2km)
} else if(domain=="world10min") {
	d.10min <- d
	save(d.10min, locs, file=file.10min)
	d.cru31.10min <- d.cru31
	save(d.10min, d.cru31.10min, locs, file=file.cru31.10min)
	d.cru32.10min <- d.cru32
	save(d.10min, d.cru32.10min, locs, file=file.cru32.10min)
}

if(all(file.exists(file.cru31.2km, file.cru31.10min, file.cru32.2km, file.cru32.10min))){
	load(file.cru31.2km)
	load(file.cru31.10min)
	load(file.cru32.2km)
	load(file.cru32.10min)
	save(d.2km, d.10min, locs, file="cc4lite/cc4lite_2km10min.RData")
	save(d.2km, d.10min, d.cru31.2km, d.cru31.10min, locs, file="cc4lite/cc4lite_cru31_2km10min.RData")
	save(d.2km, d.10min, d.cru32.2km, d.cru32.10min, locs, file="cc4lite/cc4lite_cru32_2km10min.RData")
	save(d.2km, d.10min, d.cru31.2km, d.cru31.10min, d.cru32.2km, d.cru32.10min, locs, file="cc4lite/cc4lite_cru3132_2km10min.RData")
}
