






##
##
### Levels of measurement

To get started, an example version 1 Community Charts graphic is shown below to illustrate a key opportunity for improvement.
The original plots are available in Celsius (C) or Fahrenheit (F) degree units.
Although bar charts or column charts whose bars originate from a fixed baseline make sense for random variables with a real zero,
e.g., precipitation amounts, they are problematic for a random variable such as temperature.
Unless using the Kelvin scale, which we are most certainly not in this context, temperature data in C or F becomes interval data in terms of level of measurement, like precipitation,
but unlike precipitation it is not also ratio data.

Compared to a line plot or scatter plot which are more sensible, plotting temperature using bars leads to a natural inclination to view temperature as an amount,
to see it as ratio data.
In looking at the graph this may not be a conscious thought, but relative to an arbitrary baseline,
differences in temperature may be thought of as greater than they really are for bars of substantially different height and lesser than actual for bars of similar height.

Another thing to note is that with the inclusion of error bars, the odd interpretation of bar height becomes even more evident and possibly confusing.
In fact, sometimes the confusion is misplaced "Why is the error so much greater on these bars than on those bars?"
The real issue is simply that they seem bigger relative to a shrinking bar based on proximity to the arbitrary baseline value.
The error bars remain insensitive to this baseline because they are, like precipitation, ratio level data.

##
#### Version 1 Community Chart

<img src="img/v1_ex1.png" height="500" width="900">

[*Note that it is not possible to download original Community Charts in Fahrenheit units even though the application purports to allow it.
It will download a graphic in Celsius regardless of the user's specification or what is displayed in the browser.
I had to save a screenshot of the online image in order to include it here.*]

##
### Bar baseline

If there is specific interest in degrees above freezing, then the baseline is not so arbitrary and bar height is not problematic.
However, this is not the case for the Community Charts application.
There is more interest in general temperature trends over time, in a manner that genuinely reflects interval level measurement.

The most flagrant issue with the above plot, however, is that the bars maintain a baseline of zero degrees *regardless of the unit of measurement*!
This was known at the time, evidenced by the forced inclusion of a 32 degree F line, which thankfully is not similarly hardcoded into the version using Celsius as a bar baseline of zero degrees is hardcoded here.

As long a bar plot is used to display these trends, there will have to be a baseline.
Later this problem will be circumvented with an alternative type of bar plot, but for now we continue with a common baseline value.
We will stick with freezing point as one sensible baseline.

As a quick aside, another option is to use the historical "baseline" average temperature, as it's ironically already called.
This may be more sensible given the general utility of the information in the graph.
Additionally, there would then be no need to plot twelve monthly historical period bars, greatly freeing up space and opening up the plot in a way that could make it more easily readable.

Below are two example plots from the Community Charts version 4 Lite suite using each temperature scale.
The baseline is adaptive, defined as the freezing point irrespective of units of measurement.
When changing the measurement scale, the data are not transformed in any way that should change the appearance of the bars in the two plots.
Only the y-axis need take on new values.

##
#### Freezing point baseline: Celsius

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
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart4644a2a6ee&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart4644a2a6ee&quot;,
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
 &quot;text&quot;: &quot;Average Monthly Temperature for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Temperature (Â°C)&quot;,
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
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
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
&quot;chart&quot;: {
 &quot;width&quot;:            850,
&quot;height&quot;:            500,
&quot;renderTo&quot;: &quot;chart4644a2a6ee&quot; 
},
&quot;id&quot;: &quot;chart4644a2a6ee&quot; 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart4644a2a6ee'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

##
#### Freezing point baseline: Fahrenheit

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
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart46456c06df8&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart46456c06df8&quot;,
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
 &quot;text&quot;: &quot;Average Monthly Temperature for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Temperature (Â°F)&quot;,
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
          -8.5 
],
[
 &quot;Feb&quot;,
          -2.2 
],
[
 &quot;Mar&quot;,
         11.48 
],
[
 &quot;Apr&quot;,
         30.38 
],
[
 &quot;May&quot;,
         48.38 
],
[
 &quot;Jun&quot;,
         59.18 
],
[
 &quot;Jul&quot;,
          61.7 
],
[
 &quot;Aug&quot;,
         56.48 
],
[
 &quot;Sep&quot;,
         44.96 
],
[
 &quot;Oct&quot;,
         25.52 
],
[
 &quot;Nov&quot;,
          4.82 
],
[
 &quot;Dec&quot;,
          -6.7 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
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
         -5.08 
],
[
 &quot;Feb&quot;,
          0.86 
],
[
 &quot;Mar&quot;,
         15.98 
],
[
 &quot;Apr&quot;,
         33.44 
],
[
 &quot;May&quot;,
         50.54 
],
[
 &quot;Jun&quot;,
         61.16 
],
[
 &quot;Jul&quot;,
         63.86 
],
[
 &quot;Aug&quot;,
         58.82 
],
[
 &quot;Sep&quot;,
          47.3 
],
[
 &quot;Oct&quot;,
          29.3 
],
[
 &quot;Nov&quot;,
           8.6 
],
[
 &quot;Dec&quot;,
          -4.9 
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
         -1.84 
],
[
 &quot;Feb&quot;,
          5.18 
],
[
 &quot;Mar&quot;,
          18.5 
],
[
 &quot;Apr&quot;,
         34.34 
],
[
 &quot;May&quot;,
          50.9 
],
[
 &quot;Jun&quot;,
         63.68 
],
[
 &quot;Jul&quot;,
         65.12 
],
[
 &quot;Aug&quot;,
         59.72 
],
[
 &quot;Sep&quot;,
         48.74 
],
[
 &quot;Oct&quot;,
         30.38 
],
[
 &quot;Nov&quot;,
          11.3 
],
[
 &quot;Dec&quot;,
          1.04 
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
           1.4 
],
[
 &quot;Feb&quot;,
          8.24 
],
[
 &quot;Mar&quot;,
         20.48 
],
[
 &quot;Apr&quot;,
         36.86 
],
[
 &quot;May&quot;,
         53.42 
],
[
 &quot;Jun&quot;,
         63.32 
],
[
 &quot;Jul&quot;,
         65.84 
],
[
 &quot;Aug&quot;,
         61.16 
],
[
 &quot;Sep&quot;,
         50.36 
],
[
 &quot;Oct&quot;,
         31.46 
],
[
 &quot;Nov&quot;,
         14.72 
],
[
 &quot;Dec&quot;,
          2.48 
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
           4.1 
],
[
 &quot;Feb&quot;,
           9.5 
],
[
 &quot;Mar&quot;,
            23 
],
[
 &quot;Apr&quot;,
         38.84 
],
[
 &quot;May&quot;,
         55.76 
],
[
 &quot;Jun&quot;,
         65.84 
],
[
 &quot;Jul&quot;,
         66.92 
],
[
 &quot;Aug&quot;,
         62.42 
],
[
 &quot;Sep&quot;,
         51.44 
],
[
 &quot;Oct&quot;,
         33.08 
],
[
 &quot;Nov&quot;,
          14.9 
],
[
 &quot;Dec&quot;,
             5 
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
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
         -24.88,
         12.92 
],
[
         -13.72,
         15.44 
],
[
           3.56,
         29.84 
],
[
          22.64,
         42.44 
],
[
          41.54,
          58.1 
],
[
          54.32,
            68 
],
[
          57.02,
         73.76 
],
[
          52.34,
         66.56 
],
[
           39.2,
         52.52 
],
[
           18.5,
         39.74 
],
[
          -1.48,
         24.26 
],
[
         -21.46,
          8.24 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
         -19.66,
          13.1 
],
[
         -12.64,
         21.02 
],
[
           4.46,
          29.3 
],
[
          26.06,
         44.06 
],
[
          42.08,
         60.08 
],
[
          57.02,
         72.86 
],
[
          59.36,
         72.14 
],
[
           53.6,
         64.94 
],
[
           41.9,
         56.84 
],
[
          19.22,
         39.92 
],
[
          -1.66,
         26.42 
],
[
         -13.72,
         14.54 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
         -14.44,
         18.32 
],
[
          -5.62,
         19.94 
],
[
              5,
         34.52 
],
[
          26.24,
         48.92 
],
[
          45.86,
         60.44 
],
[
          55.58,
         70.16 
],
[
             59,
         73.04 
],
[
          55.04,
          69.8 
],
[
           43.7,
         57.74 
],
[
          23.72,
         39.56 
],
[
           1.76,
          26.6 
],
[
          -15.7,
         17.96 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
         -11.74,
         23.72 
],
[
          -8.32,
         28.76 
],
[
           6.44,
          37.4 
],
[
           25.7,
         49.28 
],
[
          46.22,
          66.2 
],
[
          57.02,
            77 
],
[
          60.08,
          74.3 
],
[
          55.76,
         68.54 
],
[
          44.24,
         59.72 
],
[
           22.1,
         42.98 
],
[
           1.76,
         27.14 
],
[
         -17.32,
         18.68 
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
 &quot;threshold&quot;:             32,
&quot;groupPadding&quot;:            0.1,
&quot;pointPadding&quot;:           0.05 
} 
},
&quot;chart&quot;: {
 &quot;width&quot;:            850,
&quot;height&quot;:            500,
&quot;renderTo&quot;: &quot;chart46456c06df8&quot; 
},
&quot;id&quot;: &quot;chart46456c06df8&quot; 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart46456c06df8'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

##
### Error bars

Another difference that stands out is the increased range of the error bars.
In neither version of Community Charts are these error bars in any strict sense.
In the first version, the bars are so small because they represent one standard deviation, as computed on a set of only five values (the five climate models).
Standard deviation naturally invokes thoughts of symmetry.
In fact, as can be expected, the bars in the original plot are drawn extending symmetrically one standard deviation from the mean in each direction.
This is based on a small collection of future values from a highly uncertain variable and there is no way to see from the plot how these five climate model values are distributed around their mean.

Considering the small sample, the possible skewness of the values, that variability is not the same as uncertainty,
and that the models and scenarios available in the Community Charts application account for only a portion of the total uncertainty in future projections,
it is arguably more useful as well as honest to display the range of the five climate models than the standard deviation around the mean.
In any case, it is easy enough to optionally provide either statistic for error bars, just as version 1 allows error bars to be toggled on or off.
Below are three plots showing each of these three options when plotting precipitation trends.

##
#### No error bars

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
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart464475774a9&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart464475774a9&quot;,
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
 &quot;text&quot;: &quot;Average Monthly Precipitation for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Precipitation (mm)&quot;,
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
            17 
],
[
 &quot;Feb&quot;,
            12 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
             8 
],
[
 &quot;May&quot;,
            18 
],
[
 &quot;Jun&quot;,
            37 
],
[
 &quot;Jul&quot;,
            50 
],
[
 &quot;Aug&quot;,
            53 
],
[
 &quot;Sep&quot;,
            29 
],
[
 &quot;Oct&quot;,
            24 
],
[
 &quot;Nov&quot;,
            20 
],
[
 &quot;Dec&quot;,
            19 
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
            16 
],
[
 &quot;Feb&quot;,
            14 
],
[
 &quot;Mar&quot;,
            11 
],
[
 &quot;Apr&quot;,
             8 
],
[
 &quot;May&quot;,
            20 
],
[
 &quot;Jun&quot;,
            40 
],
[
 &quot;Jul&quot;,
            53 
],
[
 &quot;Aug&quot;,
            52 
],
[
 &quot;Sep&quot;,
            32 
],
[
 &quot;Oct&quot;,
            28 
],
[
 &quot;Nov&quot;,
            22 
],
[
 &quot;Dec&quot;,
            21 
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
            19 
],
[
 &quot;Feb&quot;,
            13 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            24 
],
[
 &quot;Jun&quot;,
            43 
],
[
 &quot;Jul&quot;,
            58 
],
[
 &quot;Aug&quot;,
            63 
],
[
 &quot;Sep&quot;,
            32 
],
[
 &quot;Oct&quot;,
            29 
],
[
 &quot;Nov&quot;,
            23 
],
[
 &quot;Dec&quot;,
            22 
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
            20 
],
[
 &quot;Feb&quot;,
            12 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            27 
],
[
 &quot;Jun&quot;,
            52 
],
[
 &quot;Jul&quot;,
            61 
],
[
 &quot;Aug&quot;,
            63 
],
[
 &quot;Sep&quot;,
            33 
],
[
 &quot;Oct&quot;,
            31 
],
[
 &quot;Nov&quot;,
            25 
],
[
 &quot;Dec&quot;,
            24 
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
            19 
],
[
 &quot;Feb&quot;,
            15 
],
[
 &quot;Mar&quot;,
            11 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            24 
],
[
 &quot;Jun&quot;,
            53 
],
[
 &quot;Jul&quot;,
            61 
],
[
 &quot;Aug&quot;,
            65 
],
[
 &quot;Sep&quot;,
            39 
],
[
 &quot;Oct&quot;,
            35 
],
[
 &quot;Nov&quot;,
            26 
],
[
 &quot;Dec&quot;,
            25 
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
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#7FFFD4&quot;, &quot;#5AC4BB&quot;, &quot;#3589A3&quot;, &quot;#104E8B&quot; ],
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
&quot;chart&quot;: {
 &quot;width&quot;:            850,
&quot;height&quot;:            500,
&quot;renderTo&quot;: &quot;chart464475774a9&quot; 
},
&quot;id&quot;: &quot;chart464475774a9&quot; 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart464475774a9'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

##
#### Error bars: +/- one standard deviation from the mean

Precipitation is a random variable that typically displays natural heteroskedasticity.
Error bars may be larger, requiring a greater range for the overall y-axis in the graph, hence why the colored bars appear smaller now.

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
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart464327935&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart464327935&quot;,
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
 &quot;text&quot;: &quot;Average Monthly Precipitation for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Precipitation (mm)&quot;,
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
            17 
],
[
 &quot;Feb&quot;,
            12 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
             8 
],
[
 &quot;May&quot;,
            18 
],
[
 &quot;Jun&quot;,
            37 
],
[
 &quot;Jul&quot;,
            50 
],
[
 &quot;Aug&quot;,
            53 
],
[
 &quot;Sep&quot;,
            29 
],
[
 &quot;Oct&quot;,
            24 
],
[
 &quot;Nov&quot;,
            20 
],
[
 &quot;Dec&quot;,
            19 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
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
            16 
],
[
 &quot;Feb&quot;,
            14 
],
[
 &quot;Mar&quot;,
            11 
],
[
 &quot;Apr&quot;,
             8 
],
[
 &quot;May&quot;,
            20 
],
[
 &quot;Jun&quot;,
            40 
],
[
 &quot;Jul&quot;,
            53 
],
[
 &quot;Aug&quot;,
            52 
],
[
 &quot;Sep&quot;,
            32 
],
[
 &quot;Oct&quot;,
            28 
],
[
 &quot;Nov&quot;,
            22 
],
[
 &quot;Dec&quot;,
            21 
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
            19 
],
[
 &quot;Feb&quot;,
            13 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            24 
],
[
 &quot;Jun&quot;,
            43 
],
[
 &quot;Jul&quot;,
            58 
],
[
 &quot;Aug&quot;,
            63 
],
[
 &quot;Sep&quot;,
            32 
],
[
 &quot;Oct&quot;,
            29 
],
[
 &quot;Nov&quot;,
            23 
],
[
 &quot;Dec&quot;,
            22 
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
            20 
],
[
 &quot;Feb&quot;,
            12 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            27 
],
[
 &quot;Jun&quot;,
            52 
],
[
 &quot;Jul&quot;,
            61 
],
[
 &quot;Aug&quot;,
            63 
],
[
 &quot;Sep&quot;,
            33 
],
[
 &quot;Oct&quot;,
            31 
],
[
 &quot;Nov&quot;,
            25 
],
[
 &quot;Dec&quot;,
            24 
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
            19 
],
[
 &quot;Feb&quot;,
            15 
],
[
 &quot;Mar&quot;,
            11 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            24 
],
[
 &quot;Jun&quot;,
            53 
],
[
 &quot;Jul&quot;,
            61 
],
[
 &quot;Aug&quot;,
            65 
],
[
 &quot;Sep&quot;,
            39 
],
[
 &quot;Oct&quot;,
            35 
],
[
 &quot;Nov&quot;,
            26 
],
[
 &quot;Dec&quot;,
            25 
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
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
            8.5,
          23.5 
],
[
            6.4,
          21.6 
],
[
            4.9,
          17.1 
],
[
            4.2,
          11.8 
],
[
           10.8,
          29.2 
],
[
           22.2,
          57.8 
],
[
           31.5,
          74.5 
],
[
           33.7,
          70.3 
],
[
           17.2,
          46.8 
],
[
           16.2,
          39.8 
],
[
           13.2,
          30.8 
],
[
            9.9,
          32.1 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
            9.4,
          28.6 
],
[
            5.5,
          20.5 
],
[
            4.8,
          15.2 
],
[
            5.8,
          14.2 
],
[
           13.9,
          34.1 
],
[
           27.1,
          58.9 
],
[
           39.3,
          76.7 
],
[
           40.2,
          85.8 
],
[
           21.3,
          42.7 
],
[
           18.8,
          39.2 
],
[
           13.4,
          32.6 
],
[
           12.1,
          31.9 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
            9.8,
          30.2 
],
[
            6.2,
          17.8 
],
[
            4.9,
          15.1 
],
[
            6.3,
          13.7 
],
[
           14.9,
          39.1 
],
[
           31.8,
          72.2 
],
[
           36.1,
          85.9 
],
[
           39.9,
          86.1 
],
[
           18.8,
          47.2 
],
[
           17.5,
          44.5 
],
[
           17.3,
          32.7 
],
[
           13.5,
          34.5 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
           11.2,
          26.8 
],
[
            6.7,
          23.3 
],
[
            6.3,
          15.7 
],
[
            5.9,
          14.1 
],
[
           13.3,
          34.7 
],
[
           26.7,
          79.3 
],
[
           38.6,
          83.4 
],
[
           43.7,
          86.3 
],
[
           26.5,
          51.5 
],
[
           21.5,
          48.5 
],
[
           13.5,
          38.5 
],
[
           12.8,
          37.2 
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
 &quot;text&quot;: &quot;Historical PRISM and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#7FFFD4&quot;, &quot;#5AC4BB&quot;, &quot;#3589A3&quot;, &quot;#104E8B&quot; ],
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
&quot;chart&quot;: {
 &quot;width&quot;:            850,
&quot;height&quot;:            500,
&quot;renderTo&quot;: &quot;chart464327935&quot; 
},
&quot;id&quot;: &quot;chart464327935&quot; 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart464327935'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

##
#### Error bars: range of the five discrete climate models

Precipitation is also likely to have a skewed distribution, making use of standard deviation without additional information sometimes unable to depict an accurate representation of variation.
Here the full spread of the five individual models is depicted by the error bars.

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
      width: 800px;
      height: 400px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart464486772e8&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart464486772e8&quot;,
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
 &quot;text&quot;: &quot;Average Monthly Precipitation for Fairbanks, Alaska&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;#000000&quot; 
} 
},
&quot;yAxis&quot;: [
 {
 &quot;title&quot;: {
 &quot;text&quot;: &quot;Precipitation (mm)&quot;,
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
            17 
],
[
 &quot;Feb&quot;,
            12 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
             8 
],
[
 &quot;May&quot;,
            18 
],
[
 &quot;Jun&quot;,
            37 
],
[
 &quot;Jul&quot;,
            50 
],
[
 &quot;Aug&quot;,
            53 
],
[
 &quot;Sep&quot;,
            29 
],
[
 &quot;Oct&quot;,
            24 
],
[
 &quot;Nov&quot;,
            20 
],
[
 &quot;Dec&quot;,
            19 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
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
            16 
],
[
 &quot;Feb&quot;,
            14 
],
[
 &quot;Mar&quot;,
            11 
],
[
 &quot;Apr&quot;,
             8 
],
[
 &quot;May&quot;,
            20 
],
[
 &quot;Jun&quot;,
            40 
],
[
 &quot;Jul&quot;,
            53 
],
[
 &quot;Aug&quot;,
            52 
],
[
 &quot;Sep&quot;,
            32 
],
[
 &quot;Oct&quot;,
            28 
],
[
 &quot;Nov&quot;,
            22 
],
[
 &quot;Dec&quot;,
            21 
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
            19 
],
[
 &quot;Feb&quot;,
            13 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            24 
],
[
 &quot;Jun&quot;,
            43 
],
[
 &quot;Jul&quot;,
            58 
],
[
 &quot;Aug&quot;,
            63 
],
[
 &quot;Sep&quot;,
            32 
],
[
 &quot;Oct&quot;,
            29 
],
[
 &quot;Nov&quot;,
            23 
],
[
 &quot;Dec&quot;,
            22 
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
            20 
],
[
 &quot;Feb&quot;,
            12 
],
[
 &quot;Mar&quot;,
            10 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            27 
],
[
 &quot;Jun&quot;,
            52 
],
[
 &quot;Jul&quot;,
            61 
],
[
 &quot;Aug&quot;,
            63 
],
[
 &quot;Sep&quot;,
            33 
],
[
 &quot;Oct&quot;,
            31 
],
[
 &quot;Nov&quot;,
            25 
],
[
 &quot;Dec&quot;,
            24 
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
            19 
],
[
 &quot;Feb&quot;,
            15 
],
[
 &quot;Mar&quot;,
            11 
],
[
 &quot;Apr&quot;,
            10 
],
[
 &quot;May&quot;,
            24 
],
[
 &quot;Jun&quot;,
            53 
],
[
 &quot;Jul&quot;,
            61 
],
[
 &quot;Aug&quot;,
            65 
],
[
 &quot;Sep&quot;,
            39 
],
[
 &quot;Oct&quot;,
            35 
],
[
 &quot;Nov&quot;,
            26 
],
[
 &quot;Dec&quot;,
            25 
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
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
],
[
 null,
null 
] 
],
&quot;name&quot;: &quot;1961-1990&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series1&quot; 
},
{
 &quot;data&quot;: [
 [
              5,
            37 
],
[
              3,
            36 
],
[
              4,
            28 
],
[
              1,
            22 
],
[
              3,
            43 
],
[
             12,
            87 
],
[
             18,
           128 
],
[
             15,
           102 
],
[
              3,
            84 
],
[
              9,
            56 
],
[
              6,
            44 
],
[
              6,
            49 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series2&quot; 
},
{
 &quot;data&quot;: [
 [
              3,
            57 
],
[
              4,
            43 
],
[
              4,
            30 
],
[
              2,
            18 
],
[
              5,
            49 
],
[
             15,
            82 
],
[
             26,
           100 
],
[
             22,
           123 
],
[
             11,
            56 
],
[
             11,
            60 
],
[
              7,
            54 
],
[
              6,
            51 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series3&quot; 
},
{
 &quot;data&quot;: [
 [
              6,
            52 
],
[
              3,
            31 
],
[
              2,
            26 
],
[
              2,
            18 
],
[
              7,
            70 
],
[
             12,
           110 
],
[
             18,
           146 
],
[
             10,
           112 
],
[
              8,
            83 
],
[
              9,
            71 
],
[
              9,
            43 
],
[
              8,
            51 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;errorbar&quot;,
&quot;linkedTo&quot;: &quot;series4&quot; 
},
{
 &quot;data&quot;: [
 [
              3,
            41 
],
[
              3,
            46 
],
[
              4,
            21 
],
[
              2,
            24 
],
[
              8,
            52 
],
[
              6,
           113 
],
[
             25,
           117 
],
[
             18,
           134 
],
[
             12,
            70 
],
[
             12,
            74 
],
[
              9,
            52 
],
[
              7,
            49 
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
 &quot;text&quot;: &quot;Historical PRISM and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
&quot;style&quot;: {
 &quot;color&quot;: &quot;gray&quot; 
} 
},
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#7FFFD4&quot;, &quot;#5AC4BB&quot;, &quot;#3589A3&quot;, &quot;#104E8B&quot; ],
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
&quot;chart&quot;: {
 &quot;width&quot;:            850,
&quot;height&quot;:            500,
&quot;renderTo&quot;: &quot;chart464486772e8&quot; 
},
&quot;id&quot;: &quot;chart464486772e8&quot; 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart464486772e8'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

<style>iframe.rChart{ width: 100%; height: 500px;}</style>
