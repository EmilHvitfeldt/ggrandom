#' Title
#'
#' @param chaos h
#'
#' @return h
#' @export
#'
#' @examples
#' 1 + 1
theme_random <- function(chaos = FALSE) {

  n_themes <- length(all_themes)

  if (chaos) {
    index <- sample(n_themes)[as.integer(Sys.time()) %% 4 + 1]
  } else {
    index <- sample(n_themes, 1)
  }
  all_themes[[index]]()
}
