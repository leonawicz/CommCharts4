






##
##
### Color palettes

For an increasing variable like decades, it is appropriate to apply an increasing color palette.
A diverging palette may also be acceptable, though sometimes this requires centering the palette on some special value depending on the data and how it is being viewed.
Neither of these are fundamentally requiremed, however, and are not always the best approach.
A qualitative palette may work well even for ordinal or numeric data if certain conditions are met.

Let's consider the colors used in the Community Charts application.
First of all, in the plots previously shown, color differences between bars help primarily to visually separate the narrow bars grouped together by month.
Second, the decades shown are not evenly spaced in time.
Third, the first bar has a color unrelated to the rest of the increasing palette in order to help separate historical data from projected climate model outputs and a 30-year period from decadal periods.
This is a good choice. This is just to say that the increasing color palette doesn't have very many colors in it.

Fourth, while temperature increases are apparent through time,
a look at precipitation plots reveals that an increasing color palette has been applied to the levels of the decade variable regardless of whether precipitation increases across decades.
"Of course!" you might say. After all, I just got through saying that the increasing palette applies to *decades*, not climate data.
Then why does the temperature plot range from yellow to red and the precipitation plot use blue hues?
On this point alone it would be worth considering using the same colors for both plots. How about four more shades of gray?
Shades of gray are more discernible to the human eye than similar shades of some other colors.

This choice of "heat" colors for temperature and "wet" colors for precipitation brings up the fifth point about these plots,
which is that in general data should not be redundantly represented by multiple plot attributes.
It gets people asking too many questions, the frustrating kind, frustrating because the questions could have been avoided by making a less ambiguous or confusing plot.

In this case, temperature is represented by height, a position along the y-axis, labeled with temperature values, and similarly with precipitation.
They should not also be differentiated by color palette.
Even though this is across plots rather than within plots, the two are often taken together.
If the temperature plot was nothing but orange and the precipitation plot nothing but blue, this would be a fair distinction between plots.
In such a case, color would truly pertain to climate variable.
Use of the two *gradients* for decades in conjunction with colors suggestive of each respective climate variable, however, is not best practice and potentially confusing.
Colors undeniably are intended to represent decades, as the legend in each plot shows, but here we are trying to use that color to represent two different things, one of which is already represented by height.

Lastly, in these plots 30-year historical and decadal bars are ordered sequentially and there are very few of them per month to concern ourselves with.
Nevertheless, since they are not explicitly labeled, a color key of some kind is still necessary.
However, not only ought they not be colors which could be confused with temperature or precipitation values, but considering there are only four colors in the increasing palette anyhow,
which refer to unequally spaced decades no less, it would not be the end of the world to offer a qualitative color palette option.

Some users may find this easier to see, and with a combination of unequally spaced periods of unequal length, separated in time by a number of years,
a case can be made for treating these period categories as falling somewhere between nominal and ordinal forms of data.
Either approach is appropriate.

Here are a couple examples using qualitative colors.

##
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
      width: 100%;
      height: 500px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart10941ea82f81&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart10941ea82f81&quot;,


&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: &quot;Average Monthly Temperature for Anchorage, Alaska&quot;,
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
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FF8C00&quot;, &quot;#6495ED&quot;, &quot;#B3EE3A&quot;, &quot;#A020F0&quot; ],
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
          -15.6,
           1.5 
],
[
          -12.7,
           0.3 
],
[
           -8.8,
           3.4 
],
[
             -2,
           5.2 
],
[
            5.9,
          11.3 
],
[
           11.6,
          15.3 
],
[
           14.1,
          17.6 
],
[
           12.8,
          16.3 
],
[
            8.1,
          12.6 
],
[
           -3.2,
           4.6 
],
[
          -11.2,
           0.4 
],
[
          -16.9,
          -1.4 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -19.1,
          -1.6 
],
[
          -14.1,
          -0.5 
],
[
           -7.9,
           4.1 
],
[
           -1.7,
           8.2 
],
[
            5.6,
          14.4 
],
[
            8.7,
          17.5 
],
[
             13,
          21.5 
],
[
           12.7,
          19.1 
],
[
            6.8,
          13.1 
],
[
           -2.8,
           7.5 
],
[
          -10.5,
           2.1 
],
[
          -16.4,
          -1.6 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -15.9,
           0.1 
],
[
          -13.9,
           5.2 
],
[
             -7,
           4.4 
],
[
           -0.6,
           9.9 
],
[
            5.6,
          14.7 
],
[
           11.2,
          20.1 
],
[
           13.6,
          20.6 
],
[
           13.3,
          18.8 
],
[
            7.5,
          14.6 
],
[
           -2.4,
           8.1 
],
[
           -9.7,
             4 
],
[
          -12.1,
             1 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -13.3,
           1.7 
],
[
          -10.4,
           4.5 
],
[
           -7.2,
           6.3 
],
[
            0.4,
          10.9 
],
[
            7.7,
            15 
],
[
           10.8,
          19.3 
],
[
           14.2,
          21.6 
],
[
           13.1,
          19.9 
],
[
            8.9,
          14.6 
],
[
           -0.3,
           7.7 
],
[
           -8.6,
           4.2 
],
[
          -13.9,
           2.2 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -11.6,
           4.4 
],
[
          -10.8,
           7.6 
],
[
           -6.3,
             9 
],
[
           -0.1,
          10.8 
],
[
            8.4,
          17.2 
],
[
           11.8,
            22 
],
[
           14.8,
          22.3 
],
[
           13.9,
          20.5 
],
[
            9.9,
            16 
],
[
            0.1,
           9.4 
],
[
           -7.7,
           4.1 
],
[
          -14.8,
           2.4 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;id&quot;: &quot;chart10941ea82f81&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart10941ea82f81&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart10941ea82f81'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

##
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
      width: 100%;
      height: 500px;
    }  
    &lt;/style&gt;
    
  &lt;/head&gt;
  &lt;body &gt;
    
    &lt;div id = &#039;chart10943ea97a91&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;chart10943ea97a91&quot;,


&quot;credits&quot;: {
 &quot;href&quot;: null,
&quot;text&quot;: null 
},
&quot;exporting&quot;: {
 &quot;enabled&quot;: false 
},
&quot;title&quot;: {
 &quot;text&quot;: &quot;Average Monthly Precipitation for Anchorage, Alaska&quot;,
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
&quot;colors&quot;: [ &quot;#666666&quot;, &quot;#FF8C00&quot;, &quot;#6495ED&quot;, &quot;#B3EE3A&quot;, &quot;#A020F0&quot; ],
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
              1,
            57 
],
[
              4,
            39 
],
[
              1,
            41 
],
[
              1,
            41 
],
[
              6,
            48 
],
[
              6,
            70 
],
[
             15,
           108 
],
[
             15,
           140 
],
[
             19,
           126 
],
[
             14,
           109 
],
[
              3,
            80 
],
[
             12,
            75 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
              5,
            44 
],
[
              2,
            63 
],
[
              4,
            42 
],
[
              2,
            28 
],
[
              7,
            49 
],
[
             12,
            63 
],
[
             11,
            81 
],
[
             16,
           189 
],
[
             15,
           145 
],
[
             22,
           127 
],
[
              7,
            67 
],
[
              7,
            85 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
              9,
            44 
],
[
              7,
            44 
],
[
              5,
            44 
],
[
              5,
            37 
],
[
              6,
            47 
],
[
             10,
            67 
],
[
             17,
            77 
],
[
             18,
           161 
],
[
             15,
           133 
],
[
             11,
           117 
],
[
              7,
            52 
],
[
             12,
            97 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
              8,
            52 
],
[
              8,
            47 
],
[
              6,
            45 
],
[
              9,
            53 
],
[
              3,
            51 
],
[
              7,
            76 
],
[
             18,
           109 
],
[
              7,
           136 
],
[
             32,
           147 
],
[
             24,
           111 
],
[
             10,
            70 
],
[
              6,
           120 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
              7,
            58 
],
[
              6,
            46 
],
[
             10,
            36 
],
[
              7,
            39 
],
[
              7,
            45 
],
[
             12,
            72 
],
[
             10,
           104 
],
[
             27,
           237 
],
[
             33,
           159 
],
[
             13,
           105 
],
[
              3,
            64 
],
[
              9,
            94 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;id&quot;: &quot;chart10943ea97a91&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;chart10943ea97a91&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-chart10943ea97a91'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

<style>iframe.rChart{ width: 100%; height: 500px;}</style>

