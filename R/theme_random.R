#' Random Theme for ggplot2
#'
#' @param chaos Logical, if set to `TRUE` enables FULL CHAOS MODE. Seeding will
#'   not work affect `theme_random()`. Defaults to `FALSE`.

#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(mpg, disp)) +
#'   geom_point() +
#'   theme_random()
#'
#' set.seed(1234)
#' ggplot(mtcars, aes(mpg, disp)) +
#'   geom_point() +
#'   theme_random(chaos = TRUE)
theme_random <- function(chaos = FALSE) {

  n_themes <- length(all_themes)

  if (chaos) {
    index <- sample(n_themes)[as.integer(Sys.time()) %% 4 + 1]
  } else {
    index <- sample(n_themes, 1)
  }
  all_themes[[index]]()
}
