#' Save a funnel plot to an HTML file
#'
#'
#' @param plot Plot to save
#'
#' @inheritParams htmlwidgets::saveWidget
#'
#' @export
saveFunnel <- function(plot, file, selfcontained = TRUE) {
  htmlwidgets::saveWidget(plot, file, selfcontained)
}
