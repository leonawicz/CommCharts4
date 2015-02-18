# @knitr setup
library(rCharts)
library(plyr)
setwd("C:/github/CommCharts4/docs/Rmd")
load("../../data/cc4lite_cru31_prism_2km10min.RData")
caption <- 'Due to variability among climate models and among years in a natural climate system, these graphs are useful for examining trends over time, rather than for precisely<br>predicting monthly or yearly values. For more information on derivation, reliability, and variability among these projections, please visit www.snap.uaf.edu.'

# @knitr inputs
location <- "Fairbanks, Alaska"
err <- "overlay"
errtype <- "sd"
variable <- "Temperature"
units="Cmm"
res <- "2km"
baseline <- "PRISM"
rcp <- "r60"

Colors <- if(variable=="Temperature") c("#666666", colorRampPalette(c("gold", "orange", "orangered", "darkred"))(4)) else c("#666666", colorRampPalette(c("aquamarine", "dodgerblue4"))(4))
RCPLabel <- switch(rcp, "r45"="Low-Range Emissions (RCP 4.5)", "r60"="Mid-Range Emissions (RCP 6.0)", "r85"="High-Range Emissions (RCP 8.5)")
FreezePoint <-ifelse(units=="Fin", 32, 0)
Thresh <- ifelse(variable=="Precipitation", 0, FreezePoint)
Unit <- if(variable=="Temperature") paste0("°", substr(units, 1, 1)) else substr(units, 2, 3)

# @knitr data
PRISM <- if(variable=="Temperature") prism.t[prism.cities==location,] else prism.p[prism.cities==location,]

CRU <- if(res=="10min") d.cru.10min else d.cru.2km
CRU_loc <- subset(CRU, Location==location)
CRU_var <- subset(CRU_loc, Var==variable)

d0 <- if(res=="10min") d.10min else d.2km
d1_loc <- subset(d0, Location==location)
d2_var <- subset(d1_loc, Var==variable)
finalizeData <- function(){
	x <- subset(d2_var, Scenario==substr(RCPLabel, nchar(RCPLabel)-7, nchar(RCPLabel)-1))
	if(baseline=="PRISM"){
		gap <- if(errtype=="sd") min(x$SD)/5 else min(x$SD)/2
		x <- rbind(x[1:12,], x)
		x$Decade[1:12] <- "1961-1990"
		x[1:12, 6:9] <- PRISM + rep(c(-gap, 0, gap, gap), each=length(PRISM))
		if(err!="exclusive"){ x$Min[1:12] <- x$Max[1:12] <- x$SD[1:12] <- NA }
	} else if(baseline=="CRU 3.1") {
		x <- rbind(CRU_var, x)
	}
	if(units=="Fin") { if(variable=="Temperature") { x[,6:8] <- x[,6:8]*(9/5) + 32; x[,9] <- x[,9]*(9/5) } else x[,6:9] <- x[,6:9]/25.4 }
	if(errtype=="sd"){
		if(baseline=="PRISM") a <- 13 else a <- 1
		x[a:nrow(x), c(6,8)] <- x[a:nrow(x), 7] + rep(c(-1,1), each=nrow(x)-a+1)*x[a:nrow(x), 9]
	}
	x
}
d3_scen <- finalizeData()

# @knitr plot
makePlot <- function(){
	p <- if(err=="exclusive") Highcharts$new else hPlot(x="Month", y="Mean", data=d3_scen, type="column", group="Decade")
	p$colors(Colors)
	p$title(text=paste("Average Monthly", variable, "for", location), style=list(color="#000000"))
	p$subtitle(text=paste("Historical", baseline, "and 5-Model Projected Average,", RCPLabel), style=list(color="gray"))
	p$legend(verticalAlign="top", y=50, borderWidth=1, borderColor="gray", borderRadius=5, itemMarginBottom=-5, itemMarginBottom=-5, itemStyle=list(color="gray"))
	#p$xAxis(categories=month.abb, title=list(text=caption, style=list(color="gray", fontWeight="normal", fontSize="8px")))
	#p$yAxis(title=list(text=paste0(variable, " (", Unit, ")"), style=list(color="gray")))
	#if(err!="exclusive") p$plotOptions(column=list(threshold=Thresh))
	#if(err!="none"){
	#	if(err=="overlay") for(k in 1:5) p$params$series[[k]]$id <- paste0("series", k)
	#	d <- d3_scen[c(5,6,8)]
	#	ddply(d, .(Decade), function(x) {
	#		g <- unique(x$Decade); x$Decade <- NULL; json <- toJSONArray2(x, json=F, names=F)
	#		if(err=="overlay") p$series(data=json, name=g, type="errorbar", linkedTo=paste0("series", which(unique(d$Decade)==g))) else p$series(data=json, name=g, type="columnrange")
	#		return(NULL)
	#	})
	#}
	#p$chart(width=700, height=400)
	p
}

p <- makePlot()

# @knitr embed
p$show("iframesrc", cdn=TRUE)
