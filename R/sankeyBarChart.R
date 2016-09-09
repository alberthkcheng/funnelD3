#' Create a D3 JavaScript Sankey diagram
#'
#' @example data <- data.frame(label=c("step 1","step 2","step 3","step 4"),
#'                              value=c(1000,600,400,100))
#'          sankeyBarChart(data)
#'
#' @import htmlwidgets
#' @export
sankeyBarChart <- function(data){

  options <- list(height = 150)

  x <- list(data=data,options=options)

  htmlwidgets::createWidget("sankeyBarChart",x, package="funnelD3")

}

#' @rdname funnelD3-shiny
#' @export
sigmaOutput <- function(outputId, width = "100%", height = "400px") {
  shinyWidgetOutput(outputId, "sankeyBarChart", width, height, package = "funnelD3")
}

#' @rdname funnelD3-shiny
#' @export
renderSigma <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, sigmaOutput, env, quoted = TRUE)
}
