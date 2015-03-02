






##
##
### Historical baseline

In the original Community Charts application, only the 1961-1990 PRISM climatology was available as a historical baseline against which to compare future climate projections.
An alternative would be to use the CRU 3.1 climatology from a similar period. I have used 1960-1989 since this is more in step with the decadal periods used for the projected climate model outputs.
Plots using each historical baseline are shown below. Unless otherwise noted, error bars in plots from here forward default to displaying the range.

##
#### Historical baseline: PRISM

The PRISM climatology is a fixed 30-year climatology. It is at 2-km spatial resolution, as are the downscaled climate model outputs because they are downscaled using PRISM.
Because PRISM is a fixed 30-year mean, there is no accompanying statistic describing inter-annual variability, hence no error bars.

It is worth considering the merits and drawbacks of using a 30-year average to compare with a handful of 10-year averages.
I think it is of little issue in these graphs,
but this tends to speak more to the fact that displaying a historical baseline is not necessary for visualizing projected trends when those future trends are apparent already.
The reason that comparing data of notably different temporal scales is not a cause for concern in this context is because the historical baseline is not critical to establishing this trend in moedel outputs.
There are bigger differences between the baseline and the future decades than temporal resolution, namely, the former is based on observational data and the latter on climate models.

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
    
    &lt;div id = &#039;chart11cc40507ec5&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart11cc40507ec5&quot;,


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
           -19 
],
[
 &quot;Mar&quot;,
         -11.4 
],
[
 &quot;Apr&quot;,
          -0.9 
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
          16.5 
],
[
 &quot;Aug&quot;,
          13.6 
],
[
 &quot;Sep&quot;,
           7.2 
],
[
 &quot;Oct&quot;,
          -3.6 
],
[
 &quot;Nov&quot;,
         -15.1 
],
[
 &quot;Dec&quot;,
         -21.5 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
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
} 
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
} 
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
} 
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
} 
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
 &quot;text&quot;: &quot;Historical PRISM and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
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
&quot;id&quot;: &quot;chart11cc40507ec5&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart11cc40507ec5&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart11cc40507ec5'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

##
#### Historical baseline: CRU 3.1

Using the CRU 3.1 downscaled climate data (also downscaled to 2-km PRISM), the values are, expectedly, little different from those shown above.
However, now error bars are available.
The historical values are not known with precision, even using CRU, which is based on weather station observations, or PRISM for that matter, which is based on CRU.
(Let's ignore the confusion regarding CRU being downscaled to PRISM which is based on CRU... it is not relevant here).

It is sensible to expect the error bars to be smaller for the historical data, but keep in mind that the error bars have different meanings.
First and foremost, CRU is not a climate model, nor is it a collection of five climate models like those represented in the plot.
There is no notion of variability across multiple runs or versions of CRU data here.
Variation is limited to that across years whereas for the climate model outputs it is across years and models.
On the other hand, variability is increased because the inter-annual variability across 30 years of data is more than that among 10 years of data.
This last point is by no means necessarily true, but happens to be the case here.

As the plot shows, this leads to error bars for CRU to be comparable to those shown for the decadal model outputs.
This also hints at why data of different temporal scales should not be directly compared without careful consideration of which properties of the data are comparable and which are not.
In any case, this permits error bars for the historical baseline.
It also assists in graphing the Community Charts slightly differently, as will be shown later, in a way that may be more interpretable and useful.

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
    
    &lt;div id = &#039;chart11cc5d47dbf&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart11cc5d47dbf&quot;,


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
         -22.3 
],
[
 &quot;Feb&quot;,
           -20 
],
[
 &quot;Mar&quot;,
         -11.3 
],
[
 &quot;Apr&quot;,
          -0.6 
],
[
 &quot;May&quot;,
           9.5 
],
[
 &quot;Jun&quot;,
          15.7 
],
[
 &quot;Jul&quot;,
          17.2 
],
[
 &quot;Aug&quot;,
          14.2 
],
[
 &quot;Sep&quot;,
           7.9 
],
[
 &quot;Oct&quot;,
            -4 
],
[
 &quot;Nov&quot;,
         -15.5 
],
[
 &quot;Dec&quot;,
         -21.5 
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
          -34.3,
          -6.9 
],
[
          -32.4,
          -9.8 
],
[
          -18.6,
          -2.2 
],
[
           -5.9,
           3.2 
],
[
            4.1,
          12.1 
],
[
           12.4,
          18.6 
],
[
             14,
          20.3 
],
[
           10.4,
          17.5 
],
[
              5,
          11.3 
],
[
          -10.1,
             1 
],
[
          -22.8,
          -5.9 
],
[
          -32.7,
         -13.7 
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
 &quot;text&quot;: &quot;Historical CRU 3.1 and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
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
&quot;id&quot;: &quot;chart11cc5d47dbf&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart11cc5d47dbf&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart11cc5d47dbf'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

<style>iframe.rChart{ width: 100%; height: 500px;}</style>
