#' Scatterplot
#'
#' @param data
#' @param x_axis
#' @param y_axis
#' @param color_variable
#'
#' @return A scatterplot coloured and organised by the given variables
#' @export
#'
#' @examples scatterplot(penguins, bill_length_mm, flipper_length_mm, species)
scatterplot <- function(dataset, x_axis, y_axis, color_variable) {
  my_graph <- ggplot2::ggplot(dataset, aes(
    x = {{ x_axis }},
    y = {{ y_axis }},
    color = {{ color_variable }})) +
    geom_point() +
    geom_hline(yintercept = 205) +
    geom_vline(xintercept = 45)

  return(my_graph)
}
