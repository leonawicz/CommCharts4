






##
##
### Displaying variability

There are many ways to display data. Some place more emphasis on visualizing averages, trends, proportional changes, etc.
The purpose of including error bars in the Community Charts graphs is to provide a sense of uncertainty.
The error bars in this application will only every provide a view of one of several sources of uncertainty in future climate projections,
specifically variability around an estimator used to measure the average of a handful of climate models across a period of ten years.

Even when using the range of the models to inform the error bars, this is an underestimation of uncertainty, which is another argument against bothering with the substantially even narrower standard deviation bars.
If you look back at the error bars in the original Community Charts example graph, they are suggestive of a level of precision regarding the future that begs criticism
(and as mentioned in a previous side note, they may be flat out wrong).
An informed viewer will know to disregard such narrow bars (so why have them?), if for no other reason that an awareness that the bars cannot possibly be intended to portray a complete profile of uncertainty about the future.
Most will interpret them as suggesting the colored bars are highly precise with regarding predicting the future.

##
#### Overlay error bars

We have already seen one method for visualizing variability, which is to overlay error bars on top of the primary bars of the bar plot.
This is in keeping with what was done in the original version (questionable precision aside).
The only difference considered so far was regarding what statistic to use as a measure of dispersion, the standard deviation or the range.
Others could be considered, such as the inter-quartile range (IQR), but as mentioned previously,
there are so few data points contributing to estimation of variability that some statistics just won't work.

To recap, and for comparison with subsequent plots, here are two plots with error bars using CRU 3.2 data.
The first shows a range bar and the second shows +/- one standard deviation from the five-model average.

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 100%;
      height: 500px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart172c6927f00&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart172c6927f00&quot;,


&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: &quot;Average Monthly Temperature for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Temperature (°C)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -22.5 
],
[
 &quot;Feb&quot;,
         -18.7 
],
[
 &quot;Mar&quot;,
         -11.8 
],
[
 &quot;Apr&quot;,
          -1.1 
],
[
 &quot;May&quot;,
           9.1 
],
[
 &quot;Jun&quot;,
          15.1 
],
[
 &quot;Jul&quot;,
          16.4 
],
[
 &quot;Aug&quot;,
          13.6 
],
[
 &quot;Sep&quot;,
           7.1 
],
[
 &quot;Oct&quot;,
          -3.4 
],
[
 &quot;Nov&quot;,
         -14.9 
],
[
 &quot;Dec&quot;,
         -21.3 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -20.6 
],
[
 &quot;Feb&quot;,
         -17.3 
],
[
 &quot;Mar&quot;,
          -8.9 
],
[
 &quot;Apr&quot;,
           0.8 
],
[
 &quot;May&quot;,
          10.3 
],
[
 &quot;Jun&quot;,
          16.2 
],
[
 &quot;Jul&quot;,
          17.7 
],
[
 &quot;Aug&quot;,
          14.9 
],
[
 &quot;Sep&quot;,
           8.5 
],
[
 &quot;Oct&quot;,
          -1.5 
],
[
 &quot;Nov&quot;,
           -13 
],
[
 &quot;Dec&quot;,
         -20.5 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -18.8 
],
[
 &quot;Feb&quot;,
         -14.9 
],
[
 &quot;Mar&quot;,
          -7.5 
],
[
 &quot;Apr&quot;,
           1.3 
],
[
 &quot;May&quot;,
          10.5 
],
[
 &quot;Jun&quot;,
          17.6 
],
[
 &quot;Jul&quot;,
          18.4 
],
[
 &quot;Aug&quot;,
          15.4 
],
[
 &quot;Sep&quot;,
           9.3 
],
[
 &quot;Oct&quot;,
          -0.9 
],
[
 &quot;Nov&quot;,
         -11.5 
],
[
 &quot;Dec&quot;,
         -17.2 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
           -17 
],
[
 &quot;Feb&quot;,
         -13.2 
],
[
 &quot;Mar&quot;,
          -6.4 
],
[
 &quot;Apr&quot;,
           2.7 
],
[
 &quot;May&quot;,
          11.9 
],
[
 &quot;Jun&quot;,
          17.4 
],
[
 &quot;Jul&quot;,
          18.8 
],
[
 &quot;Aug&quot;,
          16.2 
],
[
 &quot;Sep&quot;,
          10.2 
],
[
 &quot;Oct&quot;,
          -0.3 
],
[
 &quot;Nov&quot;,
          -9.6 
],
[
 &quot;Dec&quot;,
         -16.4 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -15.5 
],
[
 &quot;Feb&quot;,
         -12.5 
],
[
 &quot;Mar&quot;,
            -5 
],
[
 &quot;Apr&quot;,
           3.8 
],
[
 &quot;May&quot;,
          13.2 
],
[
 &quot;Jun&quot;,
          18.8 
],
[
 &quot;Jul&quot;,
          19.4 
],
[
 &quot;Aug&quot;,
          16.9 
],
[
 &quot;Sep&quot;,
          10.8 
],
[
 &quot;Oct&quot;,
           0.6 
],
[
 &quot;Nov&quot;,
          -9.5 
],
[
 &quot;Dec&quot;,
           -15 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series5&quot; 
},
{
 &quot;data&quot;: [
 [
          -31.9,
           -10 
],
[
          -30.4,
         -12.2 
],
[
          -18.7,
          -3.5 
],
[
           -6.4,
           2.6 
],
[
            4.9,
          11.7 
],
[
           12.1,
          17.9 
],
[
           14.1,
          18.9 
],
[
             10,
          16.8 
],
[
            4.2,
          10.1 
],
[
           -7.8,
           1.2 
],
[
          -20.5,
          -6.6 
],
[
            -30,
         -13.8 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
          -31.6,
         -10.6 
],
[
          -25.4,
          -9.2 
],
[
          -15.8,
          -1.2 
],
[
           -5.2,
           5.8 
],
[
            5.3,
          14.5 
],
[
           12.4,
            20 
],
[
           13.9,
          23.2 
],
[
           11.3,
          19.2 
],
[
              4,
          11.4 
],
[
           -7.5,
           4.3 
],
[
          -18.6,
          -4.3 
],
[
          -29.7,
         -13.2 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
          -28.7,
         -10.5 
],
[
          -24.8,
          -6.1 
],
[
          -15.3,
          -1.5 
],
[
           -3.3,
           6.7 
],
[
            5.6,
          15.6 
],
[
           13.9,
          22.7 
],
[
           15.2,
          22.3 
],
[
             12,
          18.3 
],
[
            5.5,
          13.8 
],
[
           -7.1,
           4.4 
],
[
          -18.7,
          -3.1 
],
[
          -25.4,
          -9.7 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
          -25.8,
          -7.6 
],
[
          -20.9,
          -6.7 
],
[
            -15,
           1.4 
],
[
           -3.2,
           9.4 
],
[
            7.7,
          15.8 
],
[
           13.1,
          21.2 
],
[
             15,
          22.8 
],
[
           12.8,
            21 
],
[
            6.5,
          14.3 
],
[
           -4.6,
           4.2 
],
[
          -16.8,
            -3 
],
[
          -26.5,
          -7.8 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
          -24.3,
          -4.6 
],
[
          -22.4,
          -1.8 
],
[
          -14.2,
             3 
],
[
           -3.5,
           9.6 
],
[
            7.9,
            19 
],
[
           13.9,
            25 
],
[
           15.6,
          23.5 
],
[
           13.2,
          20.3 
],
[
            6.8,
          15.4 
],
[
           -5.5,
           6.1 
],
[
          -16.8,
          -2.7 
],
[
          -27.4,
          -7.4 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series5&quot; 
} 
],
&quot;xAxis&quot;: [
 {
 &quot;categories&quot;: [ &quot;Jan&quot;, &quot;Feb&quot;, &quot;Mar&quot;, &quot;Apr&quot;, &quot;May&quot;, &quot;Jun&quot;, &quot;Jul&quot;, &quot;Aug&quot;, &quot;Sep&quot;, &quot;Oct&quot;, &quot;Nov&quot;, &quot;Dec&quot; ],
&quot;title&quot;: {
 &quot;text&quot;: &quot;Due to variability among climate models and among years in a natural climate system, these graphs are useful for examining trends over time, rather than for precisely&lt;br&gt;predicting monthly or yearly values. For more information on derivation, reliability, and variability among these projections, please visit www.snap.uaf.edu.&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot;,
&quot;fontWeight&quot;: &quot;normal&quot;,
&quot;fontSize&quot;: &quot;8px&quot; 
} 
} 
} 
],
&quot;subtitle&quot;: {
 &quot;text&quot;: &quot;Historical CRU 3.2 and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FFD700&quot;, &quot;#FFA500&quot;, &quot;#FF4500&quot;, &quot;#8B0000&quot; ],
&quot;legend&quot;: {
 &quot;verticalAlign&quot;: &quot;top&quot;,
&quot;y&quot;:             50,
&quot;borderWidth&quot;:              1,
&quot;borderColor&quot;: &quot;gray&quot;,
&quot;borderRadius&quot;:              5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemStyle&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;plotOptions&quot;: {
 &quot;column&quot;: {
 &quot;threshold&quot;:              0,
&quot;groupPadding&quot;:            0.1,
&quot;pointPadding&quot;:           0.05 
} 
},
&quot;id&quot;: &quot;chart172c6927f00&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart172c6927f00&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart172c6927f00'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 100%;
      height: 500px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart172c683f407e&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart172c683f407e&quot;,


&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: &quot;Average Monthly Temperature for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Temperature (°C)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -22.5 
],
[
 &quot;Feb&quot;,
         -18.7 
],
[
 &quot;Mar&quot;,
         -11.8 
],
[
 &quot;Apr&quot;,
          -1.1 
],
[
 &quot;May&quot;,
           9.1 
],
[
 &quot;Jun&quot;,
          15.1 
],
[
 &quot;Jul&quot;,
          16.4 
],
[
 &quot;Aug&quot;,
          13.6 
],
[
 &quot;Sep&quot;,
           7.1 
],
[
 &quot;Oct&quot;,
          -3.4 
],
[
 &quot;Nov&quot;,
         -14.9 
],
[
 &quot;Dec&quot;,
         -21.3 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -20.6 
],
[
 &quot;Feb&quot;,
         -17.3 
],
[
 &quot;Mar&quot;,
          -8.9 
],
[
 &quot;Apr&quot;,
           0.8 
],
[
 &quot;May&quot;,
          10.3 
],
[
 &quot;Jun&quot;,
          16.2 
],
[
 &quot;Jul&quot;,
          17.7 
],
[
 &quot;Aug&quot;,
          14.9 
],
[
 &quot;Sep&quot;,
           8.5 
],
[
 &quot;Oct&quot;,
          -1.5 
],
[
 &quot;Nov&quot;,
           -13 
],
[
 &quot;Dec&quot;,
         -20.5 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -18.8 
],
[
 &quot;Feb&quot;,
         -14.9 
],
[
 &quot;Mar&quot;,
          -7.5 
],
[
 &quot;Apr&quot;,
           1.3 
],
[
 &quot;May&quot;,
          10.5 
],
[
 &quot;Jun&quot;,
          17.6 
],
[
 &quot;Jul&quot;,
          18.4 
],
[
 &quot;Aug&quot;,
          15.4 
],
[
 &quot;Sep&quot;,
           9.3 
],
[
 &quot;Oct&quot;,
          -0.9 
],
[
 &quot;Nov&quot;,
         -11.5 
],
[
 &quot;Dec&quot;,
         -17.2 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
           -17 
],
[
 &quot;Feb&quot;,
         -13.2 
],
[
 &quot;Mar&quot;,
          -6.4 
],
[
 &quot;Apr&quot;,
           2.7 
],
[
 &quot;May&quot;,
          11.9 
],
[
 &quot;Jun&quot;,
          17.4 
],
[
 &quot;Jul&quot;,
          18.8 
],
[
 &quot;Aug&quot;,
          16.2 
],
[
 &quot;Sep&quot;,
          10.2 
],
[
 &quot;Oct&quot;,
          -0.3 
],
[
 &quot;Nov&quot;,
          -9.6 
],
[
 &quot;Dec&quot;,
         -16.4 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -15.5 
],
[
 &quot;Feb&quot;,
         -12.5 
],
[
 &quot;Mar&quot;,
            -5 
],
[
 &quot;Apr&quot;,
           3.8 
],
[
 &quot;May&quot;,
          13.2 
],
[
 &quot;Jun&quot;,
          18.8 
],
[
 &quot;Jul&quot;,
          19.4 
],
[
 &quot;Aug&quot;,
          16.9 
],
[
 &quot;Sep&quot;,
          10.8 
],
[
 &quot;Oct&quot;,
           0.6 
],
[
 &quot;Nov&quot;,
          -9.5 
],
[
 &quot;Dec&quot;,
           -15 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
},
&quot;id&quot;: &quot;series5&quot; 
},
{
 &quot;data&quot;: [
 [
          -28.2,
         -16.8 
],
[
          -23.4,
           -14 
],
[
          -15.7,
          -7.9 
],
[
           -3.6,
           1.4 
],
[
            7.5,
          10.7 
],
[
           13.6,
          16.6 
],
[
           15.2,
          17.6 
],
[
           12.1,
          15.1 
],
[
            5.5,
           8.7 
],
[
           -5.9,
          -0.9 
],
[
          -18.5,
         -11.3 
],
[
          -26.3,
         -16.3 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
          -25.6,
         -15.6 
],
[
            -21,
         -13.6 
],
[
          -12.7,
          -5.1 
],
[
           -1.7,
           3.3 
],
[
            8.4,
          12.2 
],
[
           14.5,
          17.9 
],
[
           15.9,
          19.5 
],
[
           13.4,
          16.4 
],
[
            6.8,
          10.2 
],
[
           -4.4,
           1.4 
],
[
          -16.4,
          -9.6 
],
[
          -24.3,
         -16.7 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
          -23.1,
         -14.5 
],
[
          -19.6,
         -10.2 
],
[
          -10.7,
          -4.3 
],
[
           -1.4,
             4 
],
[
            8.2,
          12.8 
],
[
           15.8,
          19.4 
],
[
           16.8,
            20 
],
[
           13.9,
          16.9 
],
[
            7.3,
          11.3 
],
[
           -3.5,
           1.7 
],
[
            -15,
            -8 
],
[
          -21.4,
           -13 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
          -21.5,
         -12.5 
],
[
          -17.4,
            -9 
],
[
           -9.7,
          -3.1 
],
[
           -0.4,
           5.8 
],
[
            9.7,
          14.1 
],
[
           15.5,
          19.3 
],
[
             17,
          20.6 
],
[
           14.3,
          18.1 
],
[
            8.4,
            12 
],
[
           -2.5,
           1.9 
],
[
          -13.3,
          -5.9 
],
[
          -20.8,
           -12 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
          -19.9,
         -11.1 
],
[
          -18.1,
          -6.9 
],
[
           -8.9,
          -1.1 
],
[
            0.6,
             7 
],
[
           10.3,
          16.1 
],
[
           15.9,
          21.7 
],
[
           17.3,
          21.5 
],
[
           15.2,
          18.6 
],
[
            8.8,
          12.8 
],
[
           -1.7,
           2.9 
],
[
            -13,
            -6 
],
[
            -20,
           -10 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series5&quot; 
} 
],
&quot;xAxis&quot;: [
 {
 &quot;categories&quot;: [ &quot;Jan&quot;, &quot;Feb&quot;, &quot;Mar&quot;, &quot;Apr&quot;, &quot;May&quot;, &quot;Jun&quot;, &quot;Jul&quot;, &quot;Aug&quot;, &quot;Sep&quot;, &quot;Oct&quot;, &quot;Nov&quot;, &quot;Dec&quot; ],
&quot;title&quot;: {
 &quot;text&quot;: &quot;Due to variability among climate models and among years in a natural climate system, these graphs are useful for examining trends over time, rather than for precisely&lt;br&gt;predicting monthly or yearly values. For more information on derivation, reliability, and variability among these projections, please visit www.snap.uaf.edu.&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot;,
&quot;fontWeight&quot;: &quot;normal&quot;,
&quot;fontSize&quot;: &quot;8px&quot; 
} 
} 
} 
],
&quot;subtitle&quot;: {
 &quot;text&quot;: &quot;Historical CRU 3.2 and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FFD700&quot;, &quot;#FFA500&quot;, &quot;#FF4500&quot;, &quot;#8B0000&quot; ],
&quot;legend&quot;: {
 &quot;verticalAlign&quot;: &quot;top&quot;,
&quot;y&quot;:             50,
&quot;borderWidth&quot;:              1,
&quot;borderColor&quot;: &quot;gray&quot;,
&quot;borderRadius&quot;:              5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemStyle&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;plotOptions&quot;: {
 &quot;column&quot;: {
 &quot;threshold&quot;:              0,
&quot;groupPadding&quot;:            0.1,
&quot;pointPadding&quot;:           0.05 
} 
},
&quot;id&quot;: &quot;chart172c683f407e&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart172c683f407e&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart172c683f407e'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

##
#### Floating bars

The focus now is on plotting the data differently, in a way that will enhance the view of variability,
while at the same time benefiting from complete removal of the bar baseline problem (for temperature).
Whereas measures of spread or dispersion around a mean cannot be inferred from looking at a mean value (this is why we must add explicit error bars),
measures of center can be inferred relatively easily from a plot of dispersion without having to add layers to the plot.
Here are plots of the same data corresponding to the two plots above.

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 100%;
      height: 500px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart172c616f3591&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart172c616f3591&quot;,


&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: &quot;Average Monthly Temperature for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Temperature (°C)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
} 
} 
],
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FFD700&quot;, &quot;#FFA500&quot;, &quot;#FF4500&quot;, &quot;#8B0000&quot; ],
&quot;subtitle&quot;: {
 &quot;text&quot;: &quot;Historical CRU 3.2 and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;legend&quot;: {
 &quot;verticalAlign&quot;: &quot;top&quot;,
&quot;y&quot;:             50,
&quot;borderWidth&quot;:              1,
&quot;borderColor&quot;: &quot;gray&quot;,
&quot;borderRadius&quot;:              5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemStyle&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;xAxis&quot;: [
 {
 &quot;categories&quot;: [ &quot;Jan&quot;, &quot;Feb&quot;, &quot;Mar&quot;, &quot;Apr&quot;, &quot;May&quot;, &quot;Jun&quot;, &quot;Jul&quot;, &quot;Aug&quot;, &quot;Sep&quot;, &quot;Oct&quot;, &quot;Nov&quot;, &quot;Dec&quot; ],
&quot;title&quot;: {
 &quot;text&quot;: &quot;Due to variability among climate models and among years in a natural climate system, these graphs are useful for examining trends over time, rather than for precisely&lt;br&gt;predicting monthly or yearly values. For more information on derivation, reliability, and variability among these projections, please visit www.snap.uaf.edu.&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot;,
&quot;fontWeight&quot;: &quot;normal&quot;,
&quot;fontSize&quot;: &quot;8px&quot; 
} 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
          -31.9,
           -10 
],
[
          -30.4,
         -12.2 
],
[
          -18.7,
          -3.5 
],
[
           -6.4,
           2.6 
],
[
            4.9,
          11.7 
],
[
           12.1,
          17.9 
],
[
           14.1,
          18.9 
],
[
             10,
          16.8 
],
[
            4.2,
          10.1 
],
[
           -7.8,
           1.2 
],
[
          -20.5,
          -6.6 
],
[
            -30,
         -13.8 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -31.6,
         -10.6 
],
[
          -25.4,
          -9.2 
],
[
          -15.8,
          -1.2 
],
[
           -5.2,
           5.8 
],
[
            5.3,
          14.5 
],
[
           12.4,
            20 
],
[
           13.9,
          23.2 
],
[
           11.3,
          19.2 
],
[
              4,
          11.4 
],
[
           -7.5,
           4.3 
],
[
          -18.6,
          -4.3 
],
[
          -29.7,
         -13.2 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -28.7,
         -10.5 
],
[
          -24.8,
          -6.1 
],
[
          -15.3,
          -1.5 
],
[
           -3.3,
           6.7 
],
[
            5.6,
          15.6 
],
[
           13.9,
          22.7 
],
[
           15.2,
          22.3 
],
[
             12,
          18.3 
],
[
            5.5,
          13.8 
],
[
           -7.1,
           4.4 
],
[
          -18.7,
          -3.1 
],
[
          -25.4,
          -9.7 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -25.8,
          -7.6 
],
[
          -20.9,
          -6.7 
],
[
            -15,
           1.4 
],
[
           -3.2,
           9.4 
],
[
            7.7,
          15.8 
],
[
           13.1,
          21.2 
],
[
             15,
          22.8 
],
[
           12.8,
            21 
],
[
            6.5,
          14.3 
],
[
           -4.6,
           4.2 
],
[
          -16.8,
            -3 
],
[
          -26.5,
          -7.8 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -24.3,
          -4.6 
],
[
          -22.4,
          -1.8 
],
[
          -14.2,
             3 
],
[
           -3.5,
           9.6 
],
[
            7.9,
            19 
],
[
           13.9,
            25 
],
[
           15.6,
          23.5 
],
[
           13.2,
          20.3 
],
[
            6.8,
          15.4 
],
[
           -5.5,
           6.1 
],
[
          -16.8,
          -2.7 
],
[
          -27.4,
          -7.4 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;id&quot;: &quot;chart172c616f3591&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart172c616f3591&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart172c616f3591'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 100%;
      height: 500px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart172c191f6a1f&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart172c191f6a1f&quot;,


&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: &quot;Average Monthly Temperature for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Temperature (°C)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
} 
} 
],
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FFD700&quot;, &quot;#FFA500&quot;, &quot;#FF4500&quot;, &quot;#8B0000&quot; ],
&quot;subtitle&quot;: {
 &quot;text&quot;: &quot;Historical CRU 3.2 and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;legend&quot;: {
 &quot;verticalAlign&quot;: &quot;top&quot;,
&quot;y&quot;:             50,
&quot;borderWidth&quot;:              1,
&quot;borderColor&quot;: &quot;gray&quot;,
&quot;borderRadius&quot;:              5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemStyle&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;xAxis&quot;: [
 {
 &quot;categories&quot;: [ &quot;Jan&quot;, &quot;Feb&quot;, &quot;Mar&quot;, &quot;Apr&quot;, &quot;May&quot;, &quot;Jun&quot;, &quot;Jul&quot;, &quot;Aug&quot;, &quot;Sep&quot;, &quot;Oct&quot;, &quot;Nov&quot;, &quot;Dec&quot; ],
&quot;title&quot;: {
 &quot;text&quot;: &quot;Due to variability among climate models and among years in a natural climate system, these graphs are useful for examining trends over time, rather than for precisely&lt;br&gt;predicting monthly or yearly values. For more information on derivation, reliability, and variability among these projections, please visit www.snap.uaf.edu.&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot;,
&quot;fontWeight&quot;: &quot;normal&quot;,
&quot;fontSize&quot;: &quot;8px&quot; 
} 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
          -28.2,
         -16.8 
],
[
          -23.4,
           -14 
],
[
          -15.7,
          -7.9 
],
[
           -3.6,
           1.4 
],
[
            7.5,
          10.7 
],
[
           13.6,
          16.6 
],
[
           15.2,
          17.6 
],
[
           12.1,
          15.1 
],
[
            5.5,
           8.7 
],
[
           -5.9,
          -0.9 
],
[
          -18.5,
         -11.3 
],
[
          -26.3,
         -16.3 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -25.6,
         -15.6 
],
[
            -21,
         -13.6 
],
[
          -12.7,
          -5.1 
],
[
           -1.7,
           3.3 
],
[
            8.4,
          12.2 
],
[
           14.5,
          17.9 
],
[
           15.9,
          19.5 
],
[
           13.4,
          16.4 
],
[
            6.8,
          10.2 
],
[
           -4.4,
           1.4 
],
[
          -16.4,
          -9.6 
],
[
          -24.3,
         -16.7 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -23.1,
         -14.5 
],
[
          -19.6,
         -10.2 
],
[
          -10.7,
          -4.3 
],
[
           -1.4,
             4 
],
[
            8.2,
          12.8 
],
[
           15.8,
          19.4 
],
[
           16.8,
            20 
],
[
           13.9,
          16.9 
],
[
            7.3,
          11.3 
],
[
           -3.5,
           1.7 
],
[
            -15,
            -8 
],
[
          -21.4,
           -13 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -21.5,
         -12.5 
],
[
          -17.4,
            -9 
],
[
           -9.7,
          -3.1 
],
[
           -0.4,
           5.8 
],
[
            9.7,
          14.1 
],
[
           15.5,
          19.3 
],
[
             17,
          20.6 
],
[
           14.3,
          18.1 
],
[
            8.4,
            12 
],
[
           -2.5,
           1.9 
],
[
          -13.3,
          -5.9 
],
[
          -20.8,
           -12 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -19.9,
         -11.1 
],
[
          -18.1,
          -6.9 
],
[
           -8.9,
          -1.1 
],
[
            0.6,
             7 
],
[
           10.3,
          16.1 
],
[
           15.9,
          21.7 
],
[
           17.3,
          21.5 
],
[
           15.2,
          18.6 
],
[
            8.8,
          12.8 
],
[
           -1.7,
           2.9 
],
[
            -13,
            -6 
],
[
            -20,
           -10 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;id&quot;: &quot;chart172c191f6a1f&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart172c191f6a1f&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart172c191f6a1f'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

Referring back to the discussion of CRU 3.2 data and error bars,
it is clear how the ability to have error bars for the historical baseline period assists in this Community Charts plot.
There is something to see. Without some measure of dispersion around the historical baseline average, the twelve spaces for historical bars in this plot would be blank.

With PRISM data we do not have a measure of inter-annual variability or any other measure of uncertainty.
To give the user something to look at for mere visual orientation - which is after all the main goal of including the historical baseline despite it being based on an different data source -
we have to fake an error bar to at least provide a little rectangle of sorts to remind them where the historical mean is located.
I suppose this can also remind us that PRISM is not perfectly estimated either, even though the little rectangle means nothing.
It's basically still a point value, but I want it to be clearly visible.

<iframe srcdoc=' &lt;!doctype HTML&gt;
&lt;meta charset = &#039;utf-8&#039;&gt;
&lt;html&gt;
  &lt;head&gt;
    
    &lt;script src=&#039;//code.jquery.com/jquery-1.9.1.min.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/highcharts-more.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    &lt;script src=&#039;//code.highcharts.com/modules/exporting.js&#039; type=&#039;text/javascript&#039;&gt;&lt;/script&gt;
    
    &lt;style&gt;
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 100%;
      height: 500px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart172c4dd26c30&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart172c4dd26c30&quot;,


&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: &quot;Average Monthly Temperature for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Temperature (°C)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
} 
} 
],
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FFD700&quot;, &quot;#FFA500&quot;, &quot;#FF4500&quot;, &quot;#8B0000&quot; ],
&quot;subtitle&quot;: {
 &quot;text&quot;: &quot;Historical PRISM and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;legend&quot;: {
 &quot;verticalAlign&quot;: &quot;top&quot;,
&quot;y&quot;:             50,
&quot;borderWidth&quot;:              1,
&quot;borderColor&quot;: &quot;gray&quot;,
&quot;borderRadius&quot;:              5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemMarginBottom&quot;:             -5,
&quot;itemStyle&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;xAxis&quot;: [
 {
 &quot;categories&quot;: [ &quot;Jan&quot;, &quot;Feb&quot;, &quot;Mar&quot;, &quot;Apr&quot;, &quot;May&quot;, &quot;Jun&quot;, &quot;Jul&quot;, &quot;Aug&quot;, &quot;Sep&quot;, &quot;Oct&quot;, &quot;Nov&quot;, &quot;Dec&quot; ],
&quot;title&quot;: {
 &quot;text&quot;: &quot;Due to variability among climate models and among years in a natural climate system, these graphs are useful for examining trends over time, rather than for precisely&lt;br&gt;predicting monthly or yearly values. For more information on derivation, reliability, and variability among these projections, please visit www.snap.uaf.edu.&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot;,
&quot;fontWeight&quot;: &quot;normal&quot;,
&quot;fontSize&quot;: &quot;8px&quot; 
} 
} 
} 
],
&quot;series&quot;: [
 {
 &quot;data&quot;: [
 [
         -23.35,
        -21.85 
],
[
         -19.75,
        -18.25 
],
[
         -12.25,
        -10.75 
],
[
          -1.65,
         -0.15 
],
[
           8.35,
          9.85 
],
[
          14.45,
         15.95 
],
[
          15.75,
         17.25 
],
[
          12.85,
         14.35 
],
[
           6.45,
          7.95 
],
[
          -4.25,
         -2.75 
],
[
         -15.85,
        -14.35 
],
[
         -22.45,
        -20.95 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -31.6,
         -10.6 
],
[
          -25.4,
          -9.2 
],
[
          -15.8,
          -1.2 
],
[
           -5.2,
           5.8 
],
[
            5.3,
          14.5 
],
[
           12.4,
            20 
],
[
           13.9,
          23.2 
],
[
           11.3,
          19.2 
],
[
              4,
          11.4 
],
[
           -7.5,
           4.3 
],
[
          -18.6,
          -4.3 
],
[
          -29.7,
         -13.2 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -28.7,
         -10.5 
],
[
          -24.8,
          -6.1 
],
[
          -15.3,
          -1.5 
],
[
           -3.3,
           6.7 
],
[
            5.6,
          15.6 
],
[
           13.9,
          22.7 
],
[
           15.2,
          22.3 
],
[
             12,
          18.3 
],
[
            5.5,
          13.8 
],
[
           -7.1,
           4.4 
],
[
          -18.7,
          -3.1 
],
[
          -25.4,
          -9.7 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -25.8,
          -7.6 
],
[
          -20.9,
          -6.7 
],
[
            -15,
           1.4 
],
[
           -3.2,
           9.4 
],
[
            7.7,
          15.8 
],
[
           13.1,
          21.2 
],
[
             15,
          22.8 
],
[
           12.8,
            21 
],
[
            6.5,
          14.3 
],
[
           -4.6,
           4.2 
],
[
          -16.8,
            -3 
],
[
          -26.5,
          -7.8 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -24.3,
          -4.6 
],
[
          -22.4,
          -1.8 
],
[
          -14.2,
             3 
],
[
           -3.5,
           9.6 
],
[
            7.9,
            19 
],
[
           13.9,
            25 
],
[
           15.6,
          23.5 
],
[
           13.2,
          20.3 
],
[
            6.8,
          15.4 
],
[
           -5.5,
           6.1 
],
[
          -16.8,
          -2.7 
],
[
          -27.4,
          -7.4 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;id&quot;: &quot;chart172c4dd26c30&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart172c4dd26c30&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart172c4dd26c30'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

<style>iframe.rChart{ width: 100%; height: 500px;}</style>
