moment_light <- generate_named_colors(background   = "#dad2c2",
                                      line         = "#37101d",
                                      text         = "#37101d",
                                      red          = "#6c1d1d",
                                      blue         = "#4e5f6e",
                                      green        = "#5d6a07",
                                      yellow       = "#c87522",
                                      brightred    = "#942726",
                                      brightblue   = "#7c9dab",
                                      brightyellow = "#d27c26",
                                      brightgreen  = "#7b8a05")

moment_dark <- generate_named_colors(background    = "#0b1521",
                                      line         = "#2c384a",
                                      text         = "#dac9aa",
                                      red          = "#893536",
                                      blue         = "#567f95",
                                      green        = "#4d7054",
                                      yellow       = "#c87522",
                                      brightred    = "#ab473a",
                                      brightblue   = "#7c9dab",
                                      brightgreen  = "#6d9579",
                                      brightyellow = "#e98a0a")

#' @export
#' @include theme_generator.R
theme_moment_dark <- generate_theme_from_colors(moment_dark)

#' @export
#' @include theme_generator.R
theme_moment_light <- generate_theme_from_colors(moment_light)

#' @export
#' @include theme_generator.R
moment_dark_color_with_name <- generate_scale_color_with_name(moment_dark)

#' @export
#' @include theme_generator.R
moment_light_color_with_name <- generate_scale_color_with_name(moment_light)

#' @export
#' @include theme_generator.R
moment_dark_fill_with_name <- generate_scale_fill_with_name(moment_dark)

#' @export
#' @include theme_generator.R
moment_light_fill_with_name <- generate_scale_fill_with_name(moment_light)

#' @export
#' @include theme_generator.R
moment_dark_color_discrete <- generate_scale_color_discrete("moment-dark",
                                                            moment_dark)

#' @export
#' @include theme_generator.R
moment_light_color_discrete <- generate_scale_color_discrete("moment-light",
                                                             moment_light)

#' @export
#' @include theme_generator.R
moment_dark_fill_discrete <- generate_scale_fill_discrete("moment-dark",
                                                          moment_dark)

#' @export
#' @include theme_generator.R
moment_light_fill_discrete <- generate_scale_fill_discrete("moment-light",
                                                           moment_light)

#' @export
#' @include theme_generator.R
moment_dark_color_gradient <- generate_scale_color_gradient(moment_dark,
                                                            c("blue",
                                                              "red",
                                                              "yellow"))

#' @export
#' @include theme_generator.R
moment_light_color_gradient <- generate_scale_color_gradient(moment_light,
                                                             c("blue",
                                                               "red",
                                                               "yellow"))

#' @export
#' @include theme_generator.R
moment_dark_fill_gradient <- generate_scale_fill_gradient(moment_dark,
                                                          c("blue",
                                                            "red",
                                                            "yellow"))

#' @export
#' @include theme_generator.R
moment_light_fill_gradient <- generate_scale_fill_gradient(moment_light,
                                                           c("blue",
                                                             "red",
                                                             "yellow"))
