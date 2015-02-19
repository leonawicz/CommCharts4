


## Here are three plots.
All three display in interactive R or within a Shiny app.
However, something about the addition of the error series appears to cause issues only when running `render` from `rmarkdown` on the Rmd file.


```r
library(rCharts)
library(plyr)
seasons <- c("winter", "spring", "summer", "fall")
seasons <- factor(seasons, levels = seasons)
set.seed(1)
d <- data.frame(x = rep(seasons, 5), y = rnorm(20) + 5, grp = rep(LETTERS[1:5], 
    each = 4))
d$lb <- 0.8 * d$y
d$ub <- 1.2 * d$y
```


```r
makePlot <- function(d, err = "overlay") {
    p <- if (err == "exclusive") 
        Highcharts$new() else hPlot(x = "x", y = "y", data = d, type = "column", group = "grp")
    if (err != "none") {
        if (err == "overlay") 
            for (k in 1:length(unique(d$grp))) p$params$series[[k]]$id <- paste0("series", 
                k)
        d2 <- d[c(3, 4, 5)]
        ddply(d2, .(grp), function(x) {
            g <- unique(x$grp)
            x$grp <- NULL
            json <- toJSONArray2(x, json = F, names = F)
            if (err == "overlay") 
                p$series(data = json, name = g, type = "errorbar", linkedTo = paste0("series", 
                  which(unique(d2$grp) == g))) else p$series(data = json, name = g, type = "columnrange")
            return(NULL)
        })
    }
    p
}

p1 <- makePlot(d = d, err = "none")  # No error bars
p2 <- makePlot(d = d, err = "exclusive")  # Add error bars
p3 <- makePlot(d = d, err = "overlay")  # Plot error only (floating bars)
```

### Grouped bar plot


```r
#p1$show('server')
p1$show("iframesrc", cdn=TRUE)
```

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&quot;&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chartcdc274468e4&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chartcdc274468e4&quot;,
&quot;width&quot;:            800,
&quot;height&quot;:            400,
&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: null 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;y&quot; 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
4.373546189258 
],
[
 &quot;spring&quot;,
5.183643324222 
],
[
 &quot;summer&quot;,
 4.16437138759 
],
[
 &quot;fall&quot;,
6.595280802138 
] 
],
&quot;name&quot;: &quot;A&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
5.329507771815 
],
[
 &quot;spring&quot;,
4.179531615882 
],
[
 &quot;summer&quot;,
5.487429052428 
],
[
 &quot;fall&quot;,
5.738324705129 
] 
],
&quot;name&quot;: &quot;B&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
5.575781351653 
],
[
 &quot;spring&quot;,
4.694611612844 
],
[
 &quot;summer&quot;,
6.511781168451 
],
[
 &quot;fall&quot;,
5.389843236411 
] 
],
&quot;name&quot;: &quot;C&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
4.378759419458 
],
[
 &quot;spring&quot;,
2.785300112823 
],
[
 &quot;summer&quot;,
6.124930918143 
],
[
 &quot;fall&quot;,
4.955066390985 
] 
],
&quot;name&quot;: &quot;D&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
4.983809736901 
],
[
 &quot;spring&quot;,
5.943836210685 
],
[
 &quot;summer&quot;,
5.821221195098 
],
[
 &quot;fall&quot;,
5.593901321218 
] 
],
&quot;name&quot;: &quot;E&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
} 
],
&quot;xAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;x&quot; 
},
&quot;categories&quot;: [ &quot;winter&quot;, &quot;spring&quot;, &quot;summer&quot;, &quot;fall&quot; ] 
} 
],
&quot;subtitle&quot;: {
 &quot;text&quot;: null 
},
&quot;id&quot;: &quot;chartcdc274468e4&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chartcdc274468e4&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chartcdc274468e4'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

### Grouped bar plot with error bars


```r
#p2$show('server')
p2$show("iframesrc", cdn=TRUE)
```

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&quot;&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chartcdc48fe1192&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chartcdc48fe1192&quot;,
&quot;width&quot;:            800,
&quot;height&quot;:            400,
&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: null 
},
&quot;yAxis&quot;: {
 &quot;title&quot;: {
 &quot;text&quot;: null 
} 
},
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
 3.498836951406,
5.248255427109 
],
[
 4.146914659378,
6.220371989066 
],
[
 3.331497110072,
4.997245665108 
],
[
  5.27622464171,
7.914336962565 
] 
],
&quot;name&quot;: &quot;A&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
 4.263606217452,
6.395409326178 
],
[
 3.343625292706,
5.015437939058 
],
[
 4.389943241943,
6.584914862914 
],
[
 4.590659764103,
6.885989646155 
] 
],
&quot;name&quot;: &quot;B&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
 4.460625081323,
6.690937621984 
],
[
 3.755689290275,
5.633533935412 
],
[
 5.209424934761,
7.814137402141 
],
[
 4.311874589129,
6.467811883694 
] 
],
&quot;name&quot;: &quot;C&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
 3.503007535567,
 5.25451130335 
],
[
 2.228240090258,
3.342360135387 
],
[
 4.899944734514,
7.349917101772 
],
[
 3.964053112788,
5.946079669182 
] 
],
&quot;name&quot;: &quot;D&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
 3.987047789521,
5.980571684281 
],
[
 4.755068968548,
7.132603452822 
],
[
 4.656976956078,
6.985465434118 
],
[
 4.475121056974,
6.712681585461 
] 
],
&quot;name&quot;: &quot;E&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;id&quot;: &quot;chartcdc48fe1192&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chartcdc48fe1192&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chartcdc48fe1192'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

### Grouped floating error bars


```r
#p3$show('server')
p3$show("iframesrc", cdn=TRUE)
```

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&quot;&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chartcdcb8a2510&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chartcdcb8a2510&quot;,
&quot;width&quot;:            800,
&quot;height&quot;:            400,
&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: null 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;y&quot; 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
4.373546189258 
],
[
 &quot;spring&quot;,
5.183643324222 
],
[
 &quot;summer&quot;,
 4.16437138759 
],
[
 &quot;fall&quot;,
6.595280802138 
] 
],
&quot;name&quot;: &quot;A&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
5.329507771815 
],
[
 &quot;spring&quot;,
4.179531615882 
],
[
 &quot;summer&quot;,
5.487429052428 
],
[
 &quot;fall&quot;,
5.738324705129 
] 
],
&quot;name&quot;: &quot;B&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
5.575781351653 
],
[
 &quot;spring&quot;,
4.694611612844 
],
[
 &quot;summer&quot;,
6.511781168451 
],
[
 &quot;fall&quot;,
5.389843236411 
] 
],
&quot;name&quot;: &quot;C&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
4.378759419458 
],
[
 &quot;spring&quot;,
2.785300112823 
],
[
 &quot;summer&quot;,
6.124930918143 
],
[
 &quot;fall&quot;,
4.955066390985 
] 
],
&quot;name&quot;: &quot;D&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;winter&quot;,
4.983809736901 
],
[
 &quot;spring&quot;,
5.943836210685 
],
[
 &quot;summer&quot;,
5.821221195098 
],
[
 &quot;fall&quot;,
5.593901321218 
] 
],
&quot;name&quot;: &quot;E&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series5&quot; 
},
{
 &quot;data&quot;: [
 [
 3.498836951406,
5.248255427109 
],
[
 4.146914659378,
6.220371989066 
],
[
 3.331497110072,
4.997245665108 
],
[
  5.27622464171,
7.914336962565 
] 
],
&quot;name&quot;: &quot;A&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
 4.263606217452,
6.395409326178 
],
[
 3.343625292706,
5.015437939058 
],
[
 4.389943241943,
6.584914862914 
],
[
 4.590659764103,
6.885989646155 
] 
],
&quot;name&quot;: &quot;B&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
 4.460625081323,
6.690937621984 
],
[
 3.755689290275,
5.633533935412 
],
[
 5.209424934761,
7.814137402141 
],
[
 4.311874589129,
6.467811883694 
] 
],
&quot;name&quot;: &quot;C&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
 3.503007535567,
 5.25451130335 
],
[
 2.228240090258,
3.342360135387 
],
[
 4.899944734514,
7.349917101772 
],
[
 3.964053112788,
5.946079669182 
] 
],
&quot;name&quot;: &quot;D&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
 3.987047789521,
5.980571684281 
],
[
 4.755068968548,
7.132603452822 
],
[
 4.656976956078,
6.985465434118 
],
[
 4.475121056974,
6.712681585461 
] 
],
&quot;name&quot;: &quot;E&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series5&quot; 
} 
],
&quot;xAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;x&quot; 
},
&quot;categories&quot;: [ &quot;winter&quot;, &quot;spring&quot;, &quot;summer&quot;, &quot;fall&quot; ] 
} 
],
&quot;subtitle&quot;: {
 &quot;text&quot;: null 
},
&quot;id&quot;: &quot;chartcdcb8a2510&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chartcdcb8a2510&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chartcdcb8a2510'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>
