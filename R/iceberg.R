iceberg_dark <- generate_color_pallet(black = "#161821",  red = "#e27878",
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

iceberg_light <- generate_color_pallet(black = "#33374c", white = "#dcdfe7",
                                       red = "#cc517a", green = "#668e3d",
                                       yellow = "#c57339", blue = "#2d539e",
                                       magenta = "#7759b4", cyan = "#3f83a6",
                                       brightblack = "#262a3f",
                                       brightwhite = "#8389a3",
                                       brightred = "#cc3768",
                                       brightgreen = "#598030",
                                       brightyellow = "#b6662d",
                                       brightblue = "#22478e",
                                       brightmagenta = "#6845ad",
                                       brightcyan = "#327698")

#' @export
#' @include theme_generator.R
theme_iceberg_dark <- generate_dark_theme_from(iceberg_dark)

#' @export
#' @include theme_generator.R
theme_iceberg_light <- generate_light_theme_from(iceberg_light)

#' @export
#' @include theme_generator.R
iceberg_dark_color_with_name <- generate_scale_color_with_name(iceberg_dark)

#' @export
#' @include theme_generator.R
iceberg_light_color_with_name <- generate_scale_color_with_name(iceberg_light)

#' @export
#' @include theme_generator.R
iceberg_dark_fill_with_name <- generate_scale_fill_with_name(iceberg_dark)

#' @export
#' @include theme_generator.R
iceberg_light_fill_with_name <- generate_scale_fill_with_name(iceberg_light)

#' @export
#' @include theme_generator.R
iceberg_dark_color_discrete <- generate_scale_color_discrete(iceberg_dark)

#' @export
#' @include theme_generator.R
iceberg_light_color_discrete <- generate_scale_color_discrete(iceberg_light)

#' @export
#' @include theme_generator.R
iceberg_dark_fill_discrete <- generate_scale_fill_discrete(iceberg_dark)

#' @export
#' @include theme_generator.R
iceberg_light_fill_discrete <- generate_scale_fill_discrete(iceberg_light)

#' @export
#' @include theme_generator.R
iceberg_dark_color_gradient <- generate_scale_color_gradient(iceberg_dark,
                                                             c("blue",
                                                               "magenta",
                                                               "red",
                                                               "yellow"))

#' @export
#' @include theme_generator.R
iceberg_light_color_gradient <- generate_scale_color_gradient(iceberg_light,
                                                              c("blue",
                                                                "magenta",
                                                                "red",
                                                                "yellow"))

#' @export
#' @include theme_generator.R
iceberg_dark_fill_gradient <- generate_scale_fill_gradient(iceberg_dark,
                                                           c("blue", "magenta",
                                                             "red", "yellow"))

#' @export
#' @include theme_generator.R
iceberg_light_fill_gradient <- generate_scale_fill_gradient(iceberg_light,
                                                            c("blue", "magenta",
                                                              "red", "yellow"))
