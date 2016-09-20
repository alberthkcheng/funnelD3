[![Build Status](https://travis-ci.org/alberthkcheng/funnelD3.svg?branch=master)](https://travis-ci.org/alberthkcheng/funnelD3)

# funnelD3
D3 JavaScript funnel plots for R 

### Sankey barplot
Wrapper for the sankey-barchart.js written by `@terrancesnyder`, which aims to
provides a visualization similar to google analytics funnel report.

```R
data <- data.frame(label=c("step 1","step 2","step 3","step 4"),
                  value=c(1000,600,400,100))
sankeyBarChart(data)
```

Details described in: https://gist.github.com/terrancesnyder/227e02f3e2c8eef23f96
