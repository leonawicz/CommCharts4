# @knitr setup
library(rCharts)
library(plyr)
seasons <- c("winter", "spring", "summer", "fall")
seasons <- factor(seasons, levels=seasons)
set.seed(1)
d <- data.frame(x=rep(seasons, 5), y=rnorm(20) + 5, grp=rep(LETTERS[1:5], each=4))
d$lb <- 0.8*d$y
d$ub <- 1.2*d$y

# @knitr plot
makePlot <- function(d, err="overlay"){
	p <- if(err=="exclusive") Highcharts$new() else hPlot(x="x", y="y", data=d, type="column", group="grp")
	if(err!="none"){
		if(err=="overlay") for(k in 1:length(unique(d$grp))) p$params$series[[k]]$id <- paste0("series", k)
		d2 <- d[c(3,4,5)]
		ddply(d2, .(grp), function(x) {
			g <- unique(x$grp); x$grp <- NULL; json <- toJSONArray2(x, json=F, names=F)
			if(err=="overlay") p$series(data=json, name=g, type="errorbar", linkedTo=paste0("series", which(unique(d2$grp)==g))) else p$series(data=json, name=g, type="columnrange")
			return(NULL)
		})
	}
	p
}

p1 <- makePlot(d=d, err="none") # No error bars
p2 <- makePlot(d=d, err="exclusive") # Add error bars
p3 <- makePlot(d=d, err="overlay") # Plot error only (floating bars)

# @knitr without_errorbars
#p1$show('server')
p1$show("iframesrc", cdn=TRUE)

# @knitr with_errorbars
#p2$show('server')
p2$show("iframesrc", cdn=TRUE)

# @knitr floating_errorbars
#p3$show('server')
p3$show("iframesrc", cdn=TRUE)
