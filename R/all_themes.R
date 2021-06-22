
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
    "theme_void"
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

if (requireNamespace("ggthemes", quietly = TRUE)) {
  palettes <- c(
    "theme_base",
    "theme_calc",
    "theme_clean",
    "theme_economist",
    "theme_economist_white",
    "theme_excel",
    "theme_excel_new",
    "theme_few",
    "theme_fivethirtyeight",
    "theme_foundation",
    "theme_gdocs",
    "theme_hc",
    "theme_igray",
    "theme_map",
    "theme_pander",
    "theme_par",
    "theme_solarized",
    "theme_solarized_2",
    "theme_solid",
    "theme_stata",
    "theme_tufte",
    "theme_wsj"
  )

  all_themes <- c(
    all_themes,
    lapply(palettes, getExportedValue, ns = "ggthemes")
  )
}
