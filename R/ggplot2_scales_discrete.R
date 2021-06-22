#' Random Discrete scales to use for ggplot2
#'
#' These functions provide the option to use the discrete and dynamic palettes
#' along with the `ggplot2` package. It goes without saying that it requires
#' `ggplot2` to work.
#'
#' Available package/palette combinations are available in the data.frame
#' \code{\link[paletteer]{palettes_d_names}} and
#' \code{\link[paletteer]{palettes_dynamic_names}}.
#'
#' @rdname ggplot2-scales-discrete
#' @param ... additional arguments to pass to discrete_scale
#' @inheritParams theme_random
#'
#' @examples
#'
#' if (require("ggplot2")) {
#'   ggplot(mtcars, aes(mpg, disp, color = vs)) +
#'     geom_point() +
#'     scale_colour_random_d()
#'
#'   set.seed(1234)
#'   ggplot(mtcars, aes(mpg, disp, color = factor(vs))) +
#'     geom_point() +
#'     scale_colour_random_d(chaos = TRUE)
#' }
#' @export
scale_colour_random_d <- function(chaos = FALSE, ...) {
  palette <- random_discrete_pal(chaos = chaos)

  ggplot2::discrete_scale(
    "colour", palette,
    function(n) {
      paletteer::paletteer_d(n = n, palette = palette)
    }, ...
  )
}

#' @rdname ggplot2-scales-discrete
#' @export
scale_color_random_d <- scale_colour_random_d


#' @rdname ggplot2-scales-discrete
#' @export
#'
scale_fill_random_d <- function(chaos = FALSE, ...) {
  palette <- random_discrete_pal(chaos = chaos)

  ggplot2::discrete_scale(
    "fill", palette,
    function(n) {
      paletteer::paletteer_d(n = n, palette = palette)
    }, ...
  )
}

random_discrete_pal <- function(chaos) {
  palettes <- paste0(
    paletteer::palettes_d_names$package,
    "::",
    paletteer::palettes_d_names$palette
  )

  n_palettes <- length(palettes)

  if (chaos) {
    index <- sample(n_palettes)[as.integer(Sys.time()) %% 4 + 1]
  } else {
    index <- sample(n_palettes, 1)
  }
  palettes[index]
}
