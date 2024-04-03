distribution_histogram <- function(.data, x_axis_col) {
  ggplot2::ggplot(data = .data, 
                  ggplot2::aes(x = {{ x_axis_col }})) +
    ggplot2::geom_bar(fill = "steelblue", color = "black") 
}

