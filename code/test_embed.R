# @knitr setup
library(rCharts)
d <- data.frame(x=1:10, y=1:10)

# @knitr plot
p <- hPlot(x="x", y="y", data=d, type="column")

# @knitr embed
p$show("iframesrc", cdn=TRUE)
