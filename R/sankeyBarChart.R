#' Create a D3 JavaScript Sankey Barchart
#'
#' To create a google-analytics-like sankey barchart.
#'
#' @param data A data frame with two column: label - contains the name of steps,
#'        value - contain the value of the steps
#'
#' @examples
#' \dontrun{
#'    data <- data.frame(label=c("step 1","step 2","step 3","step 4"),
#'                       value=c(1000,600,400,100))
#'    sankeyBarChart(data)
#' }
#' @export

sankeyBarChart <- function(data){

  options <- list(height = 150)

  x <- list(data = data, options = options)

  htmlwidgets::createWidget("sankeyBarChart", x, package = "funnelD3")

}

#' @rdname funnelD3-shiny
#' @export
sankeyBarChartOutput <- function(outputId, width = "100%", height = "400px") {
  shinyWidgetOutput(outputId, "sankeyBarChart", width, height,
                    package = "funnelD3")
}

#' @rdname funnelD3-shiny
#' @export
renderSankeyBarChart <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) expr <- substitute(expr) # force quoted
  shinyRenderWidget(expr, sankeyBarChartOutput, env, quoted = TRUE)
}
