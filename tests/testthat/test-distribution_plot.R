library(palmerpenguins)
library(ggplot2)
library(vdiffr)
source("../../R/distribution_plot.R")

penguins_dist <- distribution_plot(penguins, bill_length_mm) +
  labs(x="Bill length (mm)", y="Count")
penguins_dist

test_that("refactoring our code should not change our plot", {
  expect_doppelganger("distribution plot", penguins_dist)
})
