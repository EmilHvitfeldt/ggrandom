#' Random Continuous scales to use for ggplot2
#'
#' These functions provide the option to use random continuous palettes along
#' with the `ggplot2` package. It goes without saying that it requires `ggplot2`
#'  to work.
#'
#' Available package/palette combinations are available in the data.frame
#' \code{\link[paletteer]{palettes_c_names}}.
#'
#' @param ... Arguments to pass on to `ggplot2::scale_colour_gradientn()` or
#' `ggplot2::scale_fill_gradientn()`
#' @inheritParams theme_random
#'
#' @return A `ScaleContinuous` object that can be added to a `ggplot` object
#'
#' @name ggplot2-scales-continuous
#' @rdname ggplot2-scales-continuous
#'
#' @examples
#'
#' if (require("ggplot2")) {
#'   ggplot(mtcars, aes(mpg, disp, color = drat)) +
#'     geom_point() +
#'     scale_colour_random_c()
#'
#'   set.seed(1234)
#'   ggplot(mtcars, aes(mpg, disp, color = drat)) +
#'     geom_point() +
#'     scale_colour_random_c(chaos = TRUE)
#' }
#' @export
scale_colour_random_c <- function(chaos = FALSE, ...) {
  palette <- random_continuous_palette(chaos = chaos)

  ggplot2::scale_colour_gradientn(colours = paletteer::paletteer_c(
    palette = palette,
    256
  ), ...)
}
#' @rdname ggplot2-scales-continuous
#' @export
#'
scale_color_random_c <- scale_colour_random_c
#' @rdname ggplot2-scales-continuous
#' @export
#'
scale_fill_random_c <- function(chaos = FALSE, ...) {
  palette <- random_continuous_palette(chaos = chaos)

  ggplot2::scale_fill_gradientn(colours = paletteer::paletteer_c(
    palette = palette,
    256
  ), ...)
}

random_continuous_palette <- function(chaos) {
  palettes <- paste0(
    paletteer::palettes_c_names$package,
    "::",
    paletteer::palettes_c_names$palette
  )

  n_palettes <- length(palettes)

  if (chaos) {
    index <- sample(n_palettes)[as.integer(Sys.time()) %% 4 + 1]
  } else {
    index <- sample(n_palettes, 1)
  }

  palettes[[index]]
}
