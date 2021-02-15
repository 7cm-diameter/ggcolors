thanatos_dark <- generate_named_color(black = "#22223b",
                                      white = "#ffddd2",
                                      red = "#da627d",
                                      blue = "#6096ba",
                                      green = "#43aa8b",
                                      yellow = "#f79d65",
                                      magenta = "#9f86c0",
                                      brightblack = "#4a4e69",
                                      brightwhite = "#feeafa",
                                      brightred = "#df7373",
                                      brightblue = "#778da9",
                                      brightgreen = "#95d5b2",
                                      brightyellow = "#f7b267",
                                      brightmagenta = "#be95c4"
)

#' @export
#' @include theme_generator.R
theme_thanatos_dark <- generate_dark_theme_from(thanatos_dark)

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
