% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot2_scales_discrete.R
\name{scale_colour_random_d}
\alias{scale_colour_random_d}
\alias{scale_color_random_d}
\alias{scale_fill_random_d}
\title{Random Discrete scales to use for ggplot2}
\usage{
scale_colour_random_d(chaos = FALSE, ...)

scale_color_random_d(chaos = FALSE, ...)

scale_fill_random_d(chaos = FALSE, ...)
}
\arguments{
\item{chaos}{Logical, if set to \code{TRUE} enables FULL CHAOS MODE. Seeding will
not work affect \code{theme_random()}. Defaults to \code{FALSE}.}

\item{...}{additional arguments to pass to discrete_scale}
}
\description{
These functions provide the option to use the discrete and dynamic palettes
along with the \code{ggplot2} package. It goes without saying that it requires
\code{ggplot2} to work.
}
\details{
Available package/palette combinations are available in the data.frame
\code{\link[paletteer]{palettes_d_names}} and
\code{\link[paletteer]{palettes_dynamic_names}}.
}
\examples{

if (require("ggplot2")) {
  ggplot(mtcars, aes(mpg, disp, color = vs)) +
    geom_point() +
    scale_colour_random_d()

  set.seed(1234)
  ggplot(mtcars, aes(mpg, disp, color = factor(vs))) +
    geom_point() +
    scale_colour_random_d(chaos = TRUE)
}
}
