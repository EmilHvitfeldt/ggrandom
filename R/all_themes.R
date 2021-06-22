
all_themes <- list()

if (requireNamespace("ggplot2", quietly = TRUE)) {
  palettes <- c(
    "theme_grey",
    "theme_bw",
    "theme_linedraw",
    "theme_light",
    "theme_dark",
    "theme_minimal",
    "theme_classic",
    "theme_void",
    "theme_test"
  )

  all_themes <- c(
    all_themes,
    lapply(palettes, getExportedValue, ns = "ggplot2")
  )
}

if (requireNamespace("tvthemes", quietly = TRUE)) {
  palettes <- c(
    "theme_avatar",
    "theme_brooklyn99",
    "theme_parksAndRecLight",
    "theme_rickAndMorty",
    "theme_simpsons",
    "theme_spongeBob"
  )

  all_themes <- c(
    all_themes,
    lapply(palettes, getExportedValue, ns = "tvthemes")
  )
}
