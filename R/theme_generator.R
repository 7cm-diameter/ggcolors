remove_bw <- function(pallet) {
  removed_colors <- c("black", "white", "brightblack", "brightlight")
  x <- pallet[pallet != pallet[removed_colors]]
  return(Filter(function(x) !is.na(x), x))
}

#' @export
generate_color_pallet <- function(black, white, brightblack, brightwhite, ...) {
  return(c(black = black, white = white,
           brightblack = brightblack,
           brightwhite = brightwhite, ...))
}

#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_line
#' @importFrom ggplot2 element_rect
#' @importFrom ggplot2 element_text
#' @export
generate_dark_theme_from <- function(pallet) {
  inner <- function(...) {
    theme(plot.background = element_rect(fill = pallet["black"]),
          panel.background = element_rect(fill = pallet["black"]),
          panel.grid.major = element_line(color = pallet["brightblack"]),
          panel.grid.minor = element_line(color = pallet["brightblack"]),
          panel.border = element_rect(color = pallet["brightblack"], fill = NA),
          legend.background = element_rect(color = pallet["brightblack"],
                                           fill = pallet["black"]),
          legend.key = element_rect(fill = pallet["black"]),
          legend.title = element_text(color = pallet["white"]),
          legend.text = element_text(color = pallet["white"]),
          strip.background = element_rect(color = pallet["brightblack"]),
          axis.text = element_text(color = pallet["brightwhite"]),
          axis.line = element_line(color = pallet["brightblack"]),
          axis.ticks = element_line(color = pallet["brightblack"]),
          axis.title = element_text(color = pallet["white"]),
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
generate_scale_color_with_name <- function(pallet) {
  inner <- function(...) {
    ggplot2::scale_color_manual(values = pallet, ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_color_manual
#' @export
generate_scale_fill_with_name <- function(pallet) {
  inner <- function(...) {
    ggplot2::scale_fill_manual(values = pallet, ...)
  }
  return(inner)
}


#' @importFrom ggplot2 scale_color_manual
#' @export
generate_scale_color_discrete <- function(pallet) {
  inner <- function(...) {
    ggplot2::scale_color_manual(values = as.vector(remove_bw(pallet)), ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_color_manual
#' @export
generate_scale_fill_discrete <- function(pallet) {
  inner <- function(...) {
    ggplot2::scale_fill_manual(values = as.vector(remove_bw(pallet)), ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_color_gradientn
#' @export
generate_scale_color_gradient <- function(pallet, color_seq) {
  inner <- function(...) {
    ggplot2::scale_color_gradientn(colors = pallet[color_seq], ...)
  }
  return(inner)
}

#' @importFrom ggplot2 scale_fill_gradientn
#' @export
generate_scale_fill_gradient <- function(pallet, color_seq) {
  inner <- function(...) {
    ggplot2::scale_fill_gradientn(colors = pallet[color_seq], ...)
  }
  return(inner)
}
