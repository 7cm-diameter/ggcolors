thanatos_dark <- generate_named_colors(background = "#3a5068",
                                       line = "#f06989",
                                       text = "#f06989",
                                       red = "#e68ca3",
                                       blue = "#448ea9",
                                       green = "#48CBAC",
                                       yellow = "#EE9775",
                                       magenta = "#BE91EB",
                                       brightred = "#e8a7c2",
                                       brightblue = "#77a4b9",
                                       brightgreen = "#93E1CD",
                                       brightyellow = "#F2C3AE",
                                       brightmagenta = "#D2BCF0"
)

#' @export
#' @include theme_generator.R
theme_thanatos_dark <- generate_theme_from_colors(thanatos_dark)

#' @export
#' @include theme_generator.R
theme_thanatos_light <- generate_light_theme_from(thanatos_light)

#' @export
#' @include theme_generator.R
thanatos_dark_color_with_name <- generate_scale_color_with_name(thanatos_dark)

#' @export
#' @include theme_generator.R
thanatos_dark_fill_with_name <- generate_scale_fill_with_name(thanatos_dark)

#' @export
#' @include theme_generator.R
thanatos_dark_color_discrete <- generate_scale_color_discrete("thanatos-dark",
                                                              thanatos_dark)

#' @export
#' @include theme_generator.R
thanatos_dark_fill_discrete <- generate_scale_fill_discrete("thanatos-dark",
                                                            thanatos_dark)

#' @export
#' @include theme_generator.R
thanatos_dark_color_gradient <- generate_scale_color_gradient(thanatos_dark,
                                                              c("blue",
                                                                "magenta",
                                                                "red",
                                                                "yellow"))

#' @export
#' @include theme_generator.R
thanatos_dark_fill_gradient <- generate_scale_fill_gradient(thanatos_dark,
                                                            c("blue", "magenta",
                                                              "red", "yellow"))
