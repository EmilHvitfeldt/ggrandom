
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggrandom

<!-- badges: start -->

[![R-CMD-check](https://github.com/EmilHvitfeldt/ggrandom/workflows/check-pak/badge.svg)](https://github.com/EmilHvitfeldt/ggrandom/actions)
<!-- badges: end -->

The goal of ggrandom is to introduce CHAOS to ggplot2 by adding random
themes and colors palettes.

## Installation

Install the development version from GitHub with:

``` r
require("devtools")
install_github("emilhvitfeldt/ggrandom")
```

## Example

use `theme_random()` to add a random theme. Setting `chaos = TRUE` lets
`theme_random()` “ignore” the seed.

``` r
library(ggplot2)
library(ggrandom)

ggplot(mtcars, aes(mpg, disp)) +
  geom_point() +
  theme_random()
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r
set.seed(1234)
ggplot(mtcars, aes(mpg, disp)) +
  geom_point() +
  theme_random(chaos = TRUE)
```

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" />

use `scale_colour_random_c()/scale_fill_random_c()` to add a random
continuous color scale. Setting `chaos = TRUE` lets
`scale_colour_random_c()/scale_fill_random_c()` “ignore” the seed.

``` r
library(ggplot2)
library(ggrandom)

ggplot(mtcars, aes(mpg, disp, color = drat)) +
  geom_point() +
  scale_colour_random_c()
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

``` r
set.seed(1234)
ggplot(mtcars, aes(mpg, disp, color = drat)) +
  geom_point() +
  scale_colour_random_c(chaos = TRUE)
```

<img src="man/figures/README-unnamed-chunk-3-2.png" width="100%" />

use `scale_colour_random_d()/scale_fill_random_d()` to add a random
discrete color scale. Setting `chaos = TRUE` lets
`scale_colour_random_d()/scale_fill_random_d()` “ignore” the seed.

``` r
library(ggplot2)
library(ggrandom)

ggplot(mtcars, aes(mpg, disp, color = factor(vs))) +
  geom_point() +
  scale_colour_random_d()
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

``` r
set.seed(1234)
ggplot(mtcars, aes(mpg, disp, color = factor(vs))) +
  geom_point() +
  scale_colour_random_d(chaos = TRUE)
```

<img src="man/figures/README-unnamed-chunk-4-2.png" width="100%" />

## Example (gif)

![](man/images/random.gif)
