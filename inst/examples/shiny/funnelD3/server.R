library(shiny)
library(funnelD3)

data <- data.frame(label=c("step 1","step 2","step 3","step 4"),
                   value=c(1000,600,400,100))


shinyServer(function(input, output) {

  output$sankey <- renderSankeyBarChart({
    sankeyBarChart(data)
  })

})
