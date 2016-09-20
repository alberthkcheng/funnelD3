#' Create a D3 JavaScript Sankey Barchart
#'
#' To create a google-analytics-like sankey barchart.
#'
#' @param data A data frame with two column: label - contains the name of steps,
#'        value - contain the value of the steps
#' @param width width for the plot (If \code{NULL} then height is automatically
#'        determined based on context, allowing reactivity)
#' @param height height for the plot (if \code{NULL} then width is automatically
#'        determined based on context.)
#'
#' @examples
#' \dontrun{
#'    data <- data.frame(label=c("step 1","step 2","step 3","step 4"),
#'                       value=c(1000,600,400,100))
#'    sankeyBarChart(data)
#' }
#' @export

sankeyBarChart <- function(data, height = NULL, width = NULL){

  options <- list() # For future use

  x <- list(data = data, options = options)

  htmlwidgets::createWidget("sankeyBarChart", x, package = "funnelD3",
                            width = NULL, height = NULL,
                            htmlwidgets::sizingPolicy(padding = 10,
                                                      browser.fill = TRUE))

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
