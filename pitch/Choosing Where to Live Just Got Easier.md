Choosing Where to Live Just Got Easier
========================================================
author: Daniel Hertenstein
date: 1/27/2017
autosize: true

70% of People Pick the Wrong State to Live In
========================================================

Our internal polling of 10 people says that 70% of people wish they lived in a different state

<img src="Choosing Where to Live Just Got Easier-figure/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

There's a Way to Avoid Tragedy
========================================================

Our brand new web application allows you to visually determine which states you would enjoy living in

Just pick a range of temperatures you like and a range of sunniness you like, and let us do the rest

We'll show you the states that will meet your needs


Made with NOAA Data
========================================================

Our information comes directly from the NOAA National Climatic Data Center of the United States


```r
our_data <- read.csv('state_data.csv')
head(our_data)
```

```
        State Temp Sun Abbrev
1     Alabama 62.8  58     AL
2     Arizona 60.3  85     AZ
3    Arkansas 60.4  61     AR
4  California 59.4  68     CA
5    Colorado 45.1  71     CO
6 Connecticut 49.0  56     CT
```

Click Below to Find Your Dream State
========================================================

<br>
<br>
<br>
<br>
<div align="center">
  <p style="font-size:120px">
    <a href="https://danielhertenstein.shinyapps.io/where_to_live/">The Right States Await!</a>
  </p>
</div>
