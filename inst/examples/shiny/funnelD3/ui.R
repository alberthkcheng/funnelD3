library(shiny)
library(funnelD3)

shinyUI(fluidPage(

  titlePanel("funnelD3 "),

  sidebarLayout(
    sidebarPanel(
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Sankey Bar chart Network", sankeyBarChartOutput("sankey"))
      )
    )
  )
))
