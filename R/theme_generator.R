# helper functions to generate a color theme
remove_bw <- function(pallet) {
  removed_colors <- c("black", "white", "brightblack", "brightwhite")
  for (rc in removed_colors) {
    pallet[rc] <- NA
  }
  return(Filter(function(x) !is.na(x), pallet))
}

generate_pallet <- function(colors) {
  colors <- remove_bw(colors)
  max_n <- length(colors)
  f <- function(n) {
    ntimes <- n %/% max_n + 1
    colors <- rep(colors, ntimes)
    return(unname(colors))
  }
  return(f)
}

#' @export
generate_named_color <- function(black, white, brightblack, brightwhite, ...) {
  return(c(black = black, white = white,
           brightblack = brightblack,
           brightwhite = brightwhite, ...))
}

#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_line
#' @importFrom ggplot2 element_rect
#' @importFrom ggplot2 element_text
#' @export
generate_dark_theme_from <- function(colors) {
  inner <- function(...) {
    theme(plot.background = element_rect(fill = colors["black"]),
          panel.background = element_rect(fill = colors["black"]),
          panel.grid.major = element_line(color = colors["brightblack"]),
          panel.grid.minor = element_line(color = colors["brightblack"]),
          panel.border = element_rect(color = colors["brightblack"], fill = NA),
          legend.background = element_rect(color = colors["brightblack"],
                                           fill = colors["black"]),
          legend.key = element_rect(fill = colors["black"]),
          legend.title = element_text(color = colors["white"]),
          legend.text = element_text(color = colors["white"]),
          strip.background = element_rect(color = colors["brightblack"]),
          axis.text = element_text(color = colors["brightwhite"]),
          axis.line = element_line(color = colors["brightblack"]),
          axis.ticks = element_line(color = colors["brightblack"]),
          axis.title = element_text(color = colors["white"]),
          ...
    )
  }
  return(inner)
}

#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_line
#' @importFrom ggplot2 element_rect
#' @importFrom ggplot2 element_text
#' @export
generate_light_theme_from <- function(pallet) {
  inner <- function(...) {
    theme(plot.background = element_rect(fill = pallet["white"]),
          panel.background = element_rect(fill = pallet["white"]),
          panel.grid.major = element_line(color = pallet["brightwhite"]),
          panel.grid.minor = element_line(color = pallet["brightwhite"]),
          panel.border = element_rect(color = pallet["brightwhite"], fill = NA),
          legend.background = element_rect(color = pallet["brightwhite"],
                                           fill = pallet["white"]),
          legend.key = element_rect(fill = pallet["white"]),
          legend.title = element_text(color = pallet["black"]),
          legend.text = element_text(color = pallet["black"]),
          strip.background = element_rect(color = pallet["brightwhite"]),
          axis.text = element_text(color = pallet["brightblack"]),
          axis.line = element_line(color = pallet["brightwhite"]),
          axis.ticks = element_line(color = pallet["brightwhite"]),
          axis.title = element_text(color = pallet["black"]),
          ...
    )
  }
  return(inner)
}

#' @importFrom ggplot2 scale_color_manual
#' @export
generate_scale_color_with_name <- function(colors) {
  inner <- function(...) {
    ggplot2::scale_color_manual(values = colors, ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_color_manual
#' @export
generate_scale_fill_with_name <- function(colors) {
  inner <- function(...) {
    ggplot2::scale_fill_manual(values = colors, ...)
  }
  return(inner)
}


#' @importFrom ggplot2 scale_color_manual
#' @export
generate_scale_color_discrete <- function(name, colors) {
  inner <- function(...) {
    ggplot2::discrete_scale("color", name, generate_pallet(colors), ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_color_manual
#' @export
generate_scale_fill_discrete <- function(name, colors) {
  inner <- function(...) {
    ggplot2::discrete_scale("fill", name, generate_pallet(colors), ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_color_gradientn
#' @export
generate_scale_color_gradient <- function(colors, color_seq) {
  inner <- function(...) {
    ggplot2::scale_color_gradientn(colors = colors[color_seq], ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_fill_gradientn
#' @export
generate_scale_fill_gradient <- function(colors, color_seq) {
  inner <- function(...) {
    ggplot2::scale_fill_gradientn(colors = colors[color_seq], ...)
  }
  return(inner)
}
