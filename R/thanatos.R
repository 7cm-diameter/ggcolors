thanatos_dark <- generate_named_colors(background    = "#3a5068",
                                       line          = "#f06989",
                                       text          = "#f06989",
                                       red           = "#e68ca3",
                                       blue          = "#448ea9",
                                       green         = "#48cbac",
                                       yellow        = "#ee9775",
                                       magenta       = "#be91eb",
                                       brightred     = "#e8a7c2",
                                       brightblue    = "#77a4b9",
                                       brightgreen   = "#93e1cd",
                                       brightyellow  = "#f2c3ae",
                                       brightmagenta = "#d2bcf0")

thanatos_light <- generate_named_colors(background    = "#F9D9D9",
                                        text          = "#3a5068",
                                        line          = "#3a5068",
                                        red           = "#e66787",
                                        blue          = "#3780a2",
                                        green         = "#2dc8a3",
                                        yellow        = "#ef7b4d",
                                        magenta       = "#ab83d4",
                                        brightred     = "#e68ca3",
                                        brightblue    = "#448ea9",
                                        brightgreen   = "#48cbac",
                                        brightyellow  = "#ee9775",
                                        brightmagenta = "#be91eb"
)

#' @export
#' @include theme_generator.R
theme_thanatos_dark <- generate_theme_from_colors(thanatos_dark)

#' @export
#' @include theme_generator.R
theme_thanatos_light <- generate_theme_from_colors(thanatos_light)

#' @export
#' @include theme_generator.R
thanatos_dark_color_with_name <- generate_scale_color_with_name(thanatos_dark)

#' @export
#' @include theme_generator.R
thanatos_light_color_with_name <- generate_scale_color_with_name(thanatos_light)

#' @export
#' @include theme_generator.R
thanatos_dark_fill_with_name <- generate_scale_fill_with_name(thanatos_dark)

#' @export
#' @include theme_generator.R
thanatos_light_fill_with_name <- generate_scale_fill_with_name(thanatos_light)

#' @export
#' @include theme_generator.R
thanatos_dark_color_discrete <- generate_scale_color_discrete("thanatos-dark",
                                                              thanatos_dark)

thanatos_light_color_discrete <- generate_scale_color_discrete("thanatos-light",
                                                               thanatos_light)

#' @export
#' @include theme_generator.R
thanatos_dark_fill_discrete <- generate_scale_fill_discrete("thanatos-dark",
                                                            thanatos_dark)

#' @export
#' @include theme_generator.R
thanatos_light_fill_discrete <- generate_scale_fill_discrete("thanatos-light",
                                                             thanatos_light)


#' @export
#' @include theme_generator.R
thanatos_dark_color_gradient <- generate_scale_color_gradient(thanatos_dark,
                                                              c("blue",
                                                                "magenta",
                                                                "red",
                                                                "yellow"))

#' @export
#' @include theme_generator.R
thanatos_light_color_gradient <- generate_scale_color_gradient(thanatos_light,
                                                               c("blue",
                                                                 "magenta",
                                                                 "red",
                                                                 "yellow"))

#' @export
#' @include theme_generator.R
thanatos_dark_fill_gradient <- generate_scale_fill_gradient(thanatos_dark,
                                                            c("blue", "magenta",
                                                              "red", "yellow"))

#' @export
#' @include theme_generator.R
thanatos_light_fill_gradient <- generate_scale_fill_gradient(thanatos_light,
                                                             c("blue",
                                                               "magenta",
                                                               "red",
                                                               "yellow"))
