#' Create a D3 JavaScript Sankey diagram
#'
#' @import htmlwidgets
#' @export
sankeyBarChart <- function(data){

  options <- list(style = "origin")

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
