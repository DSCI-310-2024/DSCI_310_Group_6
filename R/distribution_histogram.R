#' Distribution Plot
#'
#' A function for generating a histogram for the distribution of a variable based 
#' on its frequency,
#' and marks the mean of the variable by a vertical line via ggplot2
#'
#' @param data data_frame A data frame or a tibble.
#' @param x unquoted column name to plot on the x-axis from data data_frame or tibble
#'
#' @return A ggplot object 
#'
dist_plot <- function(data,x) {
  ggplot2::ggplot(data, ggplot2::aes(x={{x}}))+
    ggplot2::geom_histogram() +
    ggplot2::geom_vline(xintercept={{data$x}})
}


