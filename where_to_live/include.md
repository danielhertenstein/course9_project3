---
title: "Choose Where to Live Based on Temperature and Sun"
author: "Daniel Hertenstein"
date: "January 27, 2017"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

This web application helps you decide what state to live in based on its average temperature and average amount of sun during the day.

Move the sliders on the left for temperature and percentage of sunniness to set ranges that you deem acceptable to live in. The map on the right will update, highlighing the states whose averages fall within your ranges. Then all that's left is for you to pack up and move!

Data for this application comes from the NOAA National Climatic Data Center of the United States.