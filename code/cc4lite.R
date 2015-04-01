# @knitr setup
library(rCharts)
library(plyr)
load("../../data/cc4lite_cru3132_prism_2km10min.RData")
caption <- 'Due to variability among climate models and among years in a natural climate system, these graphs are useful for examining trends over time, rather than for precisely<br>predicting monthly or yearly values. For more information on derivation, reliability, and variability among these projections, please visit www.snap.uaf.edu.'

location <- "Fairbanks, Alaska"
rcp <- "r60"
RCPLabel <- switch(rcp, "r45"="Low-Range Emissions (RCP 4.5)", "r60"="Mid-Range Emissions (RCP 6.0)", "r85"="High-Range Emissions (RCP 8.5)")

# @knitr functions

finalizeData <- function(res="2km", location="Fairbanks, Alaska", variable="Temperature", rcp="r60", RCPLabel, err="overlay", errtype="sd", units="Cmm", baseline="PRISM"){
	PRISM <- if(variable=="Temperature") prism.t[prism.cities==location,] else prism.p[prism.cities==location,]

	CRU <- if(res=="10min") d.cru32.10min else d.cru32.2km
	CRU_loc <- subset(CRU, Location==location)
	CRU_var <- subset(CRU_loc, Var==variable)

	x <- if(res=="10min") d.10min else d.2km
	x <- subset(x, Location==location)
	x <- subset(x, Var==variable)
	x <- subset(x, Scenario==substr(RCPLabel, nchar(RCPLabel)-7, nchar(RCPLabel)-1))
	if(baseline=="PRISM"){
		gap <- if(errtype=="sd") min(x$SD)/5 else min(x$SD)/2
		x <- rbind(x[1:12,], x)
		x$Decade[1:12] <- "1961-1990"
		x[1:12, 6:9] <- PRISM + rep(c(-gap, 0, gap, gap), each=length(PRISM))
		if(err!="exclusive"){ x$Min[1:12] <- x$Max[1:12] <- x$SD[1:12] <- NA }
	} else if(baseline=="CRU 3.2") {
		x <- rbind(CRU_var, x)
	}
	if(units=="Fin") { if(variable=="Temperature") { x[,6:8] <- x[,6:8]*(9/5) + 32; x[,9] <- x[,9]*(9/5) } else x[,6:9] <- x[,6:9]/25.4 }
	if(errtype=="sd"){
		if(baseline=="PRISM") a <- 13 else a <- 1
		x[a:nrow(x), c(6,8)] <- x[a:nrow(x), 7] + rep(c(-1,1), each=nrow(x)-a+1)*x[a:nrow(x), 9]
	}
	x
}

makePlot <- function(d, location="Fairbanks, Alaska", variable, err, units, baseline, col="variable", width=940, height=500){
	FreezePoint <-ifelse(units=="Fin", 32, 0)
	Thresh <- ifelse(variable=="Precipitation", 0, FreezePoint)
	#Unit <- if(variable=="Temperature") paste0("°", substr(units, 1, 1)) else substr(units, 2, 3)
	Unit <- if(variable=="Temperature") paste0("_DEGREE_SYMBOL_", substr(units, 1, 1)) else substr(units, 2, 3)
	Colors <- if(variable=="Temperature") c("#666666", colorRampPalette(c("gold", "orange", "orangered", "darkred"))(4)) else c("#666666", colorRampPalette(c("aquamarine", "dodgerblue4"))(4))
	
	p <- if(err=="exclusive") Highcharts$new() else hPlot(x="Month", y="Mean", data=d, type="column", group="Decade")
	if(col=="variable") p$colors(Colors) else p$colors(c("#666666", "#FF8C00", "#6495ED", "#B3EE3A", "#A020F0"))
	p$title(text=paste("Average Monthly", variable, "for", location), style=list(color="#000000"))
	p$subtitle(text=paste("Historical", baseline, "and 5-Model Projected Average,", RCPLabel), style=list(color="gray"))
	p$legend(verticalAlign="top", y=50, borderWidth=1, borderColor="gray", borderRadius=5, itemMarginBottom=-5, itemMarginBottom=-5, itemStyle=list(color="gray"))
	p$xAxis(categories=month.abb, title=list(text=caption, style=list(color="gray", fontWeight="normal", fontSize="8px")))
	p$yAxis(title=list(text=paste0(variable, " (", Unit, ")"), style=list(color="gray")))
	if(err!="exclusive") p$plotOptions(column=list(threshold=Thresh, groupPadding=0.1, pointPadding=0.05))
	if(err!="none"){
		if(err=="overlay") for(k in 1:5) p$params$series[[k]]$id <- paste0("series", k)
		d <- d[c(5,6,8)]
		ddply(d, .(Decade), function(x) {
			g <- unique(x$Decade); x$Decade <- NULL; json <- toJSONArray2(x, json=F, names=F)
			if(err=="overlay") p$series(data=json, name=g, type="errorbar", linkedTo=paste0("series", which(unique(d$Decade)==g))) else p$series(data=json, name=g, type="columnrange")
			return(NULL)
		})
	}
	#p$chart(width=width, height=height) # set by notepad++ "search and replace in files"
	p
}

#### Intro example
# @knitr plot00a
d <- finalizeData(res="2km", location="Barrow, Alaska", variable="Temperature", RCPLabel=RCPLabel, err="overlay", errtype="sd", units="Fin", baseline="CRU 3.2")
p <- makePlot(d, location="Barrow, Alaska", variable="Temperature", err="overlay", units="Fin", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)


#### Bars with freezing point baseline
# @knitr plot01a_Cmm
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="overlay", errtype="range", units="Cmm", baseline="PRISM")
p <- makePlot(d, variable="Temperature", err="overlay", units="Cmm", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)

# @knitr plot01b_Fin
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="overlay", errtype="range", units="Fin", baseline="PRISM")
p <- makePlot(d, variable="Temperature", err="overlay", units="Fin", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)


#### Error bars: none, sd, and range
# @knitr plot02a_none
d <- finalizeData(res="2km", variable="Precipitation", RCPLabel=RCPLabel, err="none", errtype="range", units="Cmm", baseline="PRISM")
p <- makePlot(d, variable="Precipitation", err="none", units="Cmm", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)

# @knitr plot02b_sd
d <- finalizeData(res="2km", variable="Precipitation", RCPLabel=RCPLabel, err="overlay", errtype="sd", units="Cmm", baseline="PRISM")
p <- makePlot(d, variable="Precipitation", err="overlay", units="Cmm", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)

# @knitr plot02c_range
d <- finalizeData(res="2km", variable="Precipitation", RCPLabel=RCPLabel, err="overlay", errtype="range", units="Cmm", baseline="PRISM")
p <- makePlot(d, variable="Precipitation", err="overlay", units="Cmm", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)


#### Historical baseline
# @knitr plot03a_prism
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="none", errtype="range", units="Cmm", baseline="PRISM")
p <- makePlot(d, variable="Temperature", err="none", units="Cmm", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)

# @knitr plot03b_cru
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="overlay", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="overlay", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)


#### Displaying variability
# @knitr plot04a_cru_overlay_range
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="overlay", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="overlay", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot04b_cru_overlay_sd
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="overlay", errtype="sd", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="overlay", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)


#### Floating bars
# @knitr plot05a_cru_exclusive_range
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="exclusive", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot05b_cru_exclusive_sd
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="exclusive", errtype="sd", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot05c_prism_exclusive_range
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="exclusive", errtype="range", units="Cmm", baseline="PRISM")
p <- makePlot(d, variable="Temperature", err="exclusive", units="Cmm", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)


#### 2-km vs. 10-minute resolution: temperature
# @knitr plot06a_cru_temp_none_2km
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="none", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="none", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot06b_cru_temp_none_10min
d <- finalizeData(res="10min", variable="Temperature", RCPLabel=RCPLabel, err="none", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="none", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot07a_cru_temp_exclusive_2km
d <- finalizeData(res="2km", variable="Temperature", RCPLabel=RCPLabel, err="exclusive", errtype="sd", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot07b_cru_temp_exclusive_10min
d <- finalizeData(res="10min", variable="Temperature", RCPLabel=RCPLabel, err="exclusive", errtype="sd", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Temperature", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot07c_prism_temp_none_10min
d <- finalizeData(res="10min", variable="Temperature", RCPLabel=RCPLabel, err="none", errtype="sd", units="Cmm", baseline="PRISM")
p <- makePlot(d, variable="Temperature", err="none", units="Cmm", baseline="PRISM")
p$show("iframesrc", cdn=TRUE)


#### 2-km vs. 10-minute resolution: precipitation
# @knitr plot08a_cru_precip_exclusive_2km
d <- finalizeData(res="2km", variable="Precipitation", RCPLabel=RCPLabel, err="exclusive", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Precipitation", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot08b_cru_precip_exclusive_10min
d <- finalizeData(res="10min", variable="Precipitation", RCPLabel=RCPLabel, err="exclusive", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, variable="Precipitation", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot09a_cru_precip_exclusive_2km
d <- finalizeData(res="2km", location="Juneau, Alaska", variable="Precipitation", RCPLabel=RCPLabel, err="exclusive", errtype="sd", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, location="Juneau, Alaska", variable="Precipitation", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)

# @knitr plot09b_cru_precip_exclusive_10min
d <- finalizeData(res="10min", location="Juneau, Alaska", variable="Precipitation", RCPLabel=RCPLabel, err="exclusive", errtype="sd", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, location="Juneau, Alaska", variable="Precipitation", err="exclusive", units="Cmm", baseline="CRU 3.2")
p$show("iframesrc", cdn=TRUE)


#### Color options
# @knitr plot10a_temp_colors
d <- finalizeData(res="2km", location="Anchorage, Alaska", variable="Temperature", RCPLabel=RCPLabel, err="exclusive", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, location="Anchorage, Alaska", variable="Temperature", err="exclusive", units="Cmm", baseline="CRU 3.2", col="default")
p$show("iframesrc", cdn=TRUE)

# @knitr plot10b_precip_colors
d <- finalizeData(res="2km", location="Anchorage, Alaska", variable="Precipitation", RCPLabel=RCPLabel, err="exclusive", errtype="range", units="Cmm", baseline="CRU 3.2")
p <- makePlot(d, location="Anchorage, Alaska", variable="Precipitation", err="exclusive", units="Cmm", baseline="CRU 3.2", col="default")
p$show("iframesrc", cdn=TRUE)




