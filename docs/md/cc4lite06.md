






##
##
### Color palettes

For an increasing variable like decades, it is appropriate to apply an increasing or diverging color palette.
This is not a requirement, however, and not always the best approach.
First of all, in the plots previously shown, color differences between bars helps mainly to visually separate the narrow bars grouped together by month than it does to tell us what the decade is.
Second, the decades shown are not evenly spaced.
Third, the first bar has a color unrelated to the rest of the increasing palette in order to help separate historical data from projected climate model outputs and a 30-year period from decadal periods.

Fourth, while temperature increases are apparent through time, a look at precipitation plots reveals that an increasing color palette has been applied to the levels of the decade variable regardless of whether precipitation increases through time.
"Of course!" you might say. After all, the increasing palette applies to *decades*, not climate data, as I just mentioned.
Then why does the temperature plot range from yellow to red and the precipitation plot use blue hues?
On this point alone it would be worth considering using the same colors for both plots. How about four more shades of gray? Shades of gray are more discernible to the human eye than similar shades of other colors.

This choice of "heat" colors for temperature and "wet" colors for precipitation brings up the fifth point about these plots, which is that in general data should not be redundantly represented by multiple plot attributes.
It gets people asking too many questions, the frustrating kind, frustrating because the questions could have been avoided by making a less ambiguous or confusing plot.

In these plots, 30-historical and decadal bars are ordered sequentially.
Since they are not explicitly labeled, a color key of some kind is still necessary.
However, not only ought they not be colors which could be confused with temperature or precipitation values, but considering there are only four colors in the increasing palette anyhow,
which refer to unequally spaced decades no less, it would not be the end of the world to offer a qualitative color palette option.
Some users may find this easier to see.

Here are a couple examples using default Highcharts colors.

#### Anchorage temperature

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
    
    &lt;div id = &#039;chart1be096cc06&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart1be096cc06&quot;,
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
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FFD700&quot;, &quot;#FFA500&quot;, &quot;#FF4500&quot;, &quot;#8B0000&quot; ],
&quot;subtitle&quot;: {
 &quot;text&quot;: &quot;Historical CRU 3.1 and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
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
&quot;chart&quot;: {
 &quot;width&quot;:            800,
&quot;height&quot;:            500,
&quot;renderTo&quot;: &quot;chart1be096cc06&quot; 
},
&quot;id&quot;: &quot;chart1be096cc06&quot; 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart1be096cc06'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

#### Anchorage precipitation

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
    
    &lt;div id = &#039;chart1be077ab26f&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart1be077ab26f&quot;,
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
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#7FFFD4&quot;, &quot;#5AC4BB&quot;, &quot;#3589A3&quot;, &quot;#104E8B&quot; ],
&quot;subtitle&quot;: {
 &quot;text&quot;: &quot;Historical CRU 3.1 and 5-Model Projected Average, Mid-Range Emissions (RCP 6.0)&quot;,
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
              0,
            46 
],
[
              2,
            29 
],
[
              0,
            29 
],
[
              0,
            17 
],
[
              2,
            46 
],
[
             11,
            71 
],
[
             18,
           109 
],
[
             15,
           132 
],
[
              3,
            63 
],
[
              3,
            56 
],
[
              3,
            40 
],
[
              0,
            44 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
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
&quot;type&quot;: &quot;columnrange&quot; 
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
&quot;type&quot;: &quot;columnrange&quot; 
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
&quot;type&quot;: &quot;columnrange&quot; 
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
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;chart&quot;: {
 &quot;width&quot;:            800,
&quot;height&quot;:            500,
&quot;renderTo&quot;: &quot;chart1be077ab26f&quot; 
},
&quot;id&quot;: &quot;chart1be077ab26f&quot; 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart1be077ab26f'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 400px;}</style>

<style>iframe.rChart{ width: 100%; height: 500px;}</style>

