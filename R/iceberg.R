iceberg <- generate_color_pallet(black = "#161821",  red = "#e27878",
                                 green = "#b4be82", yellow = "#e2a478",
                                 blue = "#84a0c6", magenta = "#a093c7",
                                 cyan = "#89b8c2", white = "#d2d4de",
                                 brightblack = "#6b7089",
                                 brightred = "#e98989",
                                 brightgreen = "#c0ca8e",
                                 brightyellow = "#e9b189",
                                 brightblue = "#91acd1",
                                 brightmagenta = "#ada0d3",
                                 brightcyan = "#95c4ce",
                                 brightwhite = "#d2d4de")

#' @export
#' @include theme_generator.R
theme_iceberg_dark <- generate_dark_theme_from(iceberg)

#' @export
#' @include theme_generator.R
iceberg_color_with_name <- generate_scale_color_with_name(iceberg)

#' @export
#' @include theme_generator.R
iceberg_fill_with_name <- generate_scale_fill_with_name(iceberg)

#' @export
#' @include theme_generator.R
iceberg_color_discrete <- generate_scale_color_discrete(iceberg)

#' @export
#' @include theme_generator.R
iceberg_fill_discrete <- generate_scale_fill_discrete(iceberg)

#' @export
#' @include theme_generator.R
iceberg_color_gradient <- generate_scale_color_gradient(iceberg,
                                                        c("green", "blue",
                                                          "magenta", "red"))

#' @export
#' @include theme_generator.R
iceberg_fill_gradient <- generate_scale_fill_gradient(iceberg,
                                                      c("green", "blue",
                                                        "magenta", "red"))
