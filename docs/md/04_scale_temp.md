






##
##
### Spatial scale: temperature

The resolution of the data used to inform the Community Charts application is an important consideration.
For example, it would not make sense to use raw CRU data at 0.5 degrees latitude and longitude spatial resolution or raw climate model outputs with grid cells upwards of a few degrees across to stand in for point data representing communities,
even if a community is a large, sprawling city.
Instead, downscaled data are used.

PRISM, the historical baseline, uses 2-km grid cells, as does anything downscaled to the PRISM climatology, e.g., SNAP's CRU 3.1 data and five global climate models.
Climate trends for communities are extracted from these gridded data products using the grid cell in which a community's given spatial coordinates fall.
These coordinates may fall in the center of a cell or they may fall near an edge or corner,
but considering a cell is only four square kilometers and the focus is on very broad trends at a decadal time scale, this is not particularly problematic.

Nevertheless, some thought should be given to the accuracy of the coordinates.
The communities data set from which community names, populations, and coordinates are pulled, is one I would consider to be of ill repute and quite unkempt as previously mentioned.

A glance at populations for many communities makes it immediately clear that the numbers in the data set are imprecise if not also inaccurate.
It is technically sensible to be skeptical of the accurateness of a population like 100,763, as populations have constant turnover.
We don't care about that level of accuracy in that particular context.
On the other hand, it makes a lot of sense to be skeptical of a city population of exactly 100,000.
This generates concern regarding an unknown level of precision.
And let's forget about how outdated these numbers may be.

Population data is clearly not part of the Community Charts application, but it flows from the data set used to inform the application.
Obviously one would not automatically expect spatial coordinates, or any other particular variable in a data set, to be of the same quality of measurement as any other variable.
I do not expect locations to be way off, nor do I expect them to be out of date (but communities do "move around" if they are defined by a proxy variable which can move).

Still, this leaves an open question regarding the accuracy and precision of spatial coordinates.
Chiefly, if they are not to a high enough precision, they most assuredly will not be accurate.
I don't know offhand how many decimal places are required in longitude and latitude to precisely reference a specific 2-km grid cell, but it's more than a few.

Another potential weakness of the data is in terms of strict accuracy.
This is based on my observation that there are apparent duplicate communities, same name, same province, and almost the same coordinates, but not quite the same.
Sometimes a community occurs many times within the data set and it must be considered whether this represents a change over time in location of a city center or public administration unit.
It is safe to assume the data set does not contain communities which are truly nomadic.

With all that in mind, we proceed on the assumption that the spatial coordinates for each community are "good enough".
Again, our interest is in broad scale climate trends, enough so that some uncertainty in the spatial dimension based on the overall unkemptness of the communities data set is a moot point.

Until now.

##
#### 10-minute spatial resolution

Would you directly compare a sample of annual average temperatures from one community to a sample of 30-year annual temperature climatologies from another community and argue that the latter community has more stable climate?
What about average July precipitation from a 2-km downscaled grid cell vs. that seen over a 10-minute grid cell?

Although the communities in the Community Charts application range roughly from northwestern Alaska down through the western half of Canada,
a quick calculation for a typical community situated at a typical latitude in the application shows that a 10-minute by 10-minute grid cell can range anywhere from 100 to 200 square kilometers.
That's not typically what people think of as a community.
Compare that to four square kilometers for a 2-km by 2-km grid cell.

It is not known in advance what kind of effect this will have on assessment of climate trends, in either temperature or precipitation, or whether any difference will be noteworthy.
However, this is why we analyze these things, so that we know for sure and can make an informed decision on the legitimacy of mixing the two scales.
Of course, this is not to say that I wouldn't be comfortable wagering on how this will turn out.

In the absence of context it is difficult to imagine why this mixture of scales, one to be used for some communities, another to be used for the rest, would even be a consideration.
It's not like the two scales are 1-km and 2-km, or 10-minute and 12-minute.
So I will briefly expound upon that.
The reason it is considered here is simply because there is interest giving the Community Charts application a nominal boost in the number of communities available.
(How about we remove the duplicates and otherwise clean up the data set first?)
Anyhow, inclusion of additional communities is sensible because they will be specifically from the Northwest Territories in Canada, which is currently not represented in the application.

The problem is that there is good reason this region was never included in versions 1, 2, or 3 of Community Charts (it will eventually be added to version 3 as well as this version 4 here).
The PRISM climatology does not cover this area.
Therefore coarser climate model outputs (and CRU data) could not be downscaled using the 2-km PRISM climatology.
The finest resolution climatology available over this geographic region is the 10-minute resolution CRU climatology, which is world wide (over landmasses only, ocean excluded, since CRU is weather station based).

Whereas the vast majority of communities in the data set will be able to retain their basis in 2-km downscaled data,
the nominal addition of communities based on 10-minute resolution data will likely incur some initial fanfare and be touted when and where possible.
While there will surely be some caveat noted on the chart indicating the spatial resolution and what people should take away from it, this does not automatically make it acceptable to use.
It depends on what kind of information comes through at that coarser scale in the context of community-level data.

Let's take a look again at our test case, Fairbanks, Alaska.
Error bars have been removed to help focus on mean values.

##
#### Mean temperature: 2-km resolution

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
    
    &lt;div id = &#039;charta742ab168d3&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;charta742ab168d3&quot;,


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
&quot;id&quot;: &quot;charta742ab168d3&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;charta742ab168d3&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-charta742ab168d3'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

##
#### Mean temperature: 10-minute resolution

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
    
    &lt;div id = &#039;charta747b1ab4&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;charta747b1ab4&quot;,


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
         -23.4 
],
[
 &quot;Feb&quot;,
           -19 
],
[
 &quot;Mar&quot;,
           -12 
],
[
 &quot;Apr&quot;,
          -1.5 
],
[
 &quot;May&quot;,
           8.2 
],
[
 &quot;Jun&quot;,
          14.2 
],
[
 &quot;Jul&quot;,
          15.7 
],
[
 &quot;Aug&quot;,
          12.8 
],
[
 &quot;Sep&quot;,
           6.7 
],
[
 &quot;Oct&quot;,
          -4.3 
],
[
 &quot;Nov&quot;,
         -16.1 
],
[
 &quot;Dec&quot;,
         -22.1 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;column&quot;,
&quot;marker&quot;: {
 &quot;radius&quot;:              3 
} 
},
{
 &quot;data&quot;: [
 [
 &quot;Jan&quot;,
         -21.5 
],
[
 &quot;Feb&quot;,
         -17.5 
],
[
 &quot;Mar&quot;,
          -9.1 
],
[
 &quot;Apr&quot;,
           0.5 
],
[
 &quot;May&quot;,
           9.4 
],
[
 &quot;Jun&quot;,
          15.3 
],
[
 &quot;Jul&quot;,
            17 
],
[
 &quot;Aug&quot;,
          14.2 
],
[
 &quot;Sep&quot;,
           8.1 
],
[
 &quot;Oct&quot;,
          -2.4 
],
[
 &quot;Nov&quot;,
         -14.2 
],
[
 &quot;Dec&quot;,
         -21.3 
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
         -19.8 
],
[
 &quot;Feb&quot;,
         -15.2 
],
[
 &quot;Mar&quot;,
          -7.8 
],
[
 &quot;Apr&quot;,
           0.9 
],
[
 &quot;May&quot;,
           9.6 
],
[
 &quot;Jun&quot;,
          16.6 
],
[
 &quot;Jul&quot;,
          17.7 
],
[
 &quot;Aug&quot;,
          14.7 
],
[
 &quot;Sep&quot;,
           8.9 
],
[
 &quot;Oct&quot;,
          -1.8 
],
[
 &quot;Nov&quot;,
         -12.7 
],
[
 &quot;Dec&quot;,
           -18 
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
           -18 
],
[
 &quot;Feb&quot;,
         -13.4 
],
[
 &quot;Mar&quot;,
          -6.7 
],
[
 &quot;Apr&quot;,
           2.4 
],
[
 &quot;May&quot;,
            11 
],
[
 &quot;Jun&quot;,
          16.5 
],
[
 &quot;Jul&quot;,
          18.1 
],
[
 &quot;Aug&quot;,
          15.5 
],
[
 &quot;Sep&quot;,
           9.8 
],
[
 &quot;Oct&quot;,
          -1.2 
],
[
 &quot;Nov&quot;,
         -10.8 
],
[
 &quot;Dec&quot;,
         -17.2 
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
         -16.5 
],
[
 &quot;Feb&quot;,
         -12.7 
],
[
 &quot;Mar&quot;,
          -5.2 
],
[
 &quot;Apr&quot;,
           3.3 
],
[
 &quot;May&quot;,
          12.2 
],
[
 &quot;Jun&quot;,
          17.9 
],
[
 &quot;Jul&quot;,
          18.8 
],
[
 &quot;Aug&quot;,
          16.3 
],
[
 &quot;Sep&quot;,
          10.4 
],
[
 &quot;Oct&quot;,
          -0.3 
],
[
 &quot;Nov&quot;,
         -10.7 
],
[
 &quot;Dec&quot;,
         -15.8 
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
&quot;id&quot;: &quot;charta747b1ab4&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;charta747b1ab4&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-charta747b1ab4'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

During some months, mean monthly temperatures differ between resolutions by more than 10 degrees Celsius and 20 degrees Fahrenheit!
And this despite that these are decadal averages of monthly averages of five-model averages! Averages of averages of averages! Done exclaiming.

Look at January 2010-2019.
Use the decadal color key in each of the above two plots to deselect all but this decade to see the difference more easily.
Comparing data while transcending this much of a spatial scale reveals seriously biased values between scales.
In other months bias can go in the opposite direction.

Where a community falls inside a grid cell based on its coordinates can easily introduce bias if that grid cell is large.
Compared to 2-km resolution, the 10-minute resolution is large enough to yield enormous differences in temperature which has been averaged several times over.
A larger grid cell has a higher chance of including area which would not downscale to values similar to the 2-km grid cell where the community most closely resides.
The average temperature signal over the 10-minute grid cell is not likely to be representative of any random 4-km square section within it that is based on high resolution PRISM data.

It is worth noting that another difference can be the use of CRU vs. PRISM climatologies for downscaling, which are different, even if related.
But it is still the case that one of the biggest differences about the respective climatologies used for downscaling is their spatial scale.

Next, the same data are plotted using floating range bars only.
This makes it easier to focus on the variability at different scales.

##
#### Temperature range: 2-km resolution

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
    
    &lt;div id = &#039;charta74c971679&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;charta74c971679&quot;,


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
&quot;id&quot;: &quot;charta74c971679&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;charta74c971679&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-charta74c971679'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

##
#### Temperature range: 10-minute resolution

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
    
    &lt;div id = &#039;charta7452aa5217&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;charta7452aa5217&quot;,


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
            -29,
         -17.8 
],
[
          -23.7,
         -14.3 
],
[
          -15.9,
          -8.1 
],
[
             -4,
             1 
],
[
            6.6,
           9.8 
],
[
           12.7,
          15.7 
],
[
           14.5,
          16.9 
],
[
           11.3,
          14.3 
],
[
            5.1,
           8.3 
],
[
           -6.8,
          -1.8 
],
[
          -19.7,
         -12.5 
],
[
          -27.1,
         -17.1 
] 
],
&quot;name&quot;: &quot;1960-1989&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -26.5,
         -16.5 
],
[
          -21.2,
         -13.8 
],
[
          -12.9,
          -5.3 
],
[
             -2,
             3 
],
[
            7.5,
          11.3 
],
[
           13.7,
          16.9 
],
[
           15.2,
          18.8 
],
[
           12.7,
          15.7 
],
[
            6.4,
           9.8 
],
[
           -5.3,
           0.5 
],
[
          -17.6,
         -10.8 
],
[
          -25.1,
         -17.5 
] 
],
&quot;name&quot;: &quot;2010-2019&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -24.1,
         -15.5 
],
[
            -20,
         -10.4 
],
[
          -11.1,
          -4.5 
],
[
           -1.8,
           3.6 
],
[
            7.4,
          11.8 
],
[
           14.8,
          18.4 
],
[
           16.1,
          19.3 
],
[
           13.2,
          16.2 
],
[
            6.9,
          10.9 
],
[
           -4.4,
           0.8 
],
[
          -16.2,
          -9.2 
],
[
          -22.2,
         -13.8 
] 
],
&quot;name&quot;: &quot;2040-2049&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
          -22.5,
         -13.5 
],
[
          -17.6,
          -9.2 
],
[
            -10,
          -3.4 
],
[
           -0.6,
           5.4 
],
[
            8.8,
          13.2 
],
[
           14.6,
          18.4 
],
[
           16.3,
          19.9 
],
[
           13.6,
          17.4 
],
[
              8,
          11.6 
],
[
           -3.4,
             1 
],
[
          -14.4,
          -7.2 
],
[
          -21.6,
         -12.8 
] 
],
&quot;name&quot;: &quot;2060-2069&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
},
{
 &quot;data&quot;: [
 [
            -21,
           -12 
],
[
          -18.3,
          -7.1 
],
[
             -9,
          -1.4 
],
[
            0.1,
           6.5 
],
[
            9.3,
          15.1 
],
[
             15,
          20.8 
],
[
           16.7,
          20.9 
],
[
           14.7,
          17.9 
],
[
            8.5,
          12.3 
],
[
           -2.6,
             2 
],
[
          -14.3,
          -7.1 
],
[
          -20.8,
         -10.8 
] 
],
&quot;name&quot;: &quot;2090-2099&quot;,
&quot;type&quot;: &quot;columnrange&quot; 
} 
],
&quot;id&quot;: &quot;charta7452aa5217&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;charta7452aa5217&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-charta7452aa5217'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

Variability differs between scales but is less consistent in amount and direction and appears less extreme than bias.
This is possibly because variability, while being in part a function of scale,
here is essentially based on other variables which are constant between scales, e.g., size of temporal windows and number of climate models.
Changes in spatial variability with spatial resolution can only creep in here indirectly in terms of the effect of scale on the range of the five models during a ten-year period.
Ultimately, there is no direct information content here regarding variability across space.
At both resolutions a community is based on a single grid cell, however large that grid cell may be.

It may not apply here, but is also worth noting that, compared to precipitation, temperature tends to be positively autocorrelated in space at greater distances.
It is also important to note that the test case of Fairbanks, Alaska here represents a sample of size one.
The same properties may behave differently in other geographic locations and must be checked as well.

##
#### 2-km PRISM data with 10-minute climate model output

Note that the above plots all use CRU 3.1 data for a historical baseline.
For one last comparison using temperature, examine the difference when using PRISM in conjunction with 10-minute resolution data.
I chose not to aggregate the 2-km monthly PRISM climatologies to 10-minute resolution.
This makes it clear how different the two temperature signals are from one another as well as which times of year the larger differences are observed, at least for Fairbanks, Alaska.

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
    
    &lt;div id = &#039;charta7472ba7cb0&#039; class = &#039;rChart highcharts&#039;&gt;&lt;/div&gt;    
    &lt;script type=&#039;text/javascript&#039;&gt;
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 &quot;dom&quot;: &quot;charta7472ba7cb0&quot;,


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
         -22.6 
],
[
 &quot;Feb&quot;,
           -19 
],
[
 &quot;Mar&quot;,
         -11.5 
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
          15.2 
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
          -3.5 
],
[
 &quot;Nov&quot;,
         -15.1 
],
[
 &quot;Dec&quot;,
         -21.7 
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
         -21.5 
],
[
 &quot;Feb&quot;,
         -17.5 
],
[
 &quot;Mar&quot;,
          -9.1 
],
[
 &quot;Apr&quot;,
           0.5 
],
[
 &quot;May&quot;,
           9.4 
],
[
 &quot;Jun&quot;,
          15.3 
],
[
 &quot;Jul&quot;,
            17 
],
[
 &quot;Aug&quot;,
          14.2 
],
[
 &quot;Sep&quot;,
           8.1 
],
[
 &quot;Oct&quot;,
          -2.4 
],
[
 &quot;Nov&quot;,
         -14.2 
],
[
 &quot;Dec&quot;,
         -21.3 
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
         -19.8 
],
[
 &quot;Feb&quot;,
         -15.2 
],
[
 &quot;Mar&quot;,
          -7.8 
],
[
 &quot;Apr&quot;,
           0.9 
],
[
 &quot;May&quot;,
           9.6 
],
[
 &quot;Jun&quot;,
          16.6 
],
[
 &quot;Jul&quot;,
          17.7 
],
[
 &quot;Aug&quot;,
          14.7 
],
[
 &quot;Sep&quot;,
           8.9 
],
[
 &quot;Oct&quot;,
          -1.8 
],
[
 &quot;Nov&quot;,
         -12.7 
],
[
 &quot;Dec&quot;,
           -18 
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
           -18 
],
[
 &quot;Feb&quot;,
         -13.4 
],
[
 &quot;Mar&quot;,
          -6.7 
],
[
 &quot;Apr&quot;,
           2.4 
],
[
 &quot;May&quot;,
            11 
],
[
 &quot;Jun&quot;,
          16.5 
],
[
 &quot;Jul&quot;,
          18.1 
],
[
 &quot;Aug&quot;,
          15.5 
],
[
 &quot;Sep&quot;,
           9.8 
],
[
 &quot;Oct&quot;,
          -1.2 
],
[
 &quot;Nov&quot;,
         -10.8 
],
[
 &quot;Dec&quot;,
         -17.2 
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
         -16.5 
],
[
 &quot;Feb&quot;,
         -12.7 
],
[
 &quot;Mar&quot;,
          -5.2 
],
[
 &quot;Apr&quot;,
           3.3 
],
[
 &quot;May&quot;,
          12.2 
],
[
 &quot;Jun&quot;,
          17.9 
],
[
 &quot;Jul&quot;,
          18.8 
],
[
 &quot;Aug&quot;,
          16.3 
],
[
 &quot;Sep&quot;,
          10.4 
],
[
 &quot;Oct&quot;,
          -0.3 
],
[
 &quot;Nov&quot;,
         -10.7 
],
[
 &quot;Dec&quot;,
         -15.8 
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
&quot;id&quot;: &quot;charta7472ba7cb0&quot;,
&quot;chart&quot;: {
 &quot;renderTo&quot;: &quot;charta7472ba7cb0&quot; 
} 
});
        });
    })(jQuery);
&lt;/script&gt;
    
    &lt;script&gt;&lt;/script&gt;    
  &lt;/body&gt;
&lt;/html&gt; ' scrolling='no' frameBorder='0' seamless class='rChart  highcharts  ' id='iframe-charta7472ba7cb0'> </iframe>
 <style>iframe.rChart{ width: 100%; height: 500px;}</style>

<style>iframe.rChart{ width: 100%; height: 500px;}</style>
