# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'
hello <- function() {
  install.packages("tidyverse")
  install.packages("ggpubr")

  library(tidyverse)
  library(ggpubr)
  theme_set(
    theme_bw() +
      theme(legend.position = "top")
  )
  p <- ggplot(mtcars, aes(mpg, wt)) +
    geom_point() +
    geom_smooth(method = lm) +
    stat_cor(method = "pearson", label.x = 20)
  p
}
