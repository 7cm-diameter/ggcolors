# helper functions to generate a color theme
remove_theme_color <- function(colors) {
  removed_colors <- c("background", "line", "text", "black", "white")
  for (rc in removed_colors) {
    colors[rc] <- NA
  }
  return(Filter(function(x) !is.na(x), colors))
}

generate_pallet <- function(colors) {
  colors <- remove_theme_color(colors)
  max_n <- length(colors)
  f <- function(n) {
    ntimes <- n %/% max_n + 1
    colors <- rep(colors, ntimes)
    return(unname(colors))
  }
  return(f)
}

#' @export
generate_named_colors <- function(background, line, text, ...) {
  return(c(background = background, line = line, text = text, ...))
}

#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_line
#' @importFrom ggplot2 element_rect
#' @importFrom ggplot2 element_text
#' @export
generate_theme_from_colors <- function(colors) {
  inner <- function(...) {
    theme(plot.background = element_rect(fill = colors["background"]),
          panel.background = element_rect(fill = colors["background"]),
          panel.grid.major = element_line(color = colors["line"]),
          panel.grid.minor = element_line(color = colors["line"]),
          panel.border = element_rect(color = colors["line"], fill = NA),
          legend.background = element_rect(color = colors["line"],
                                           fill = colors["background"]),
          legend.key = element_rect(fill = colors["background"]),
          legend.title = element_text(color = colors["text"]),
          legend.text = element_text(color = colors["text"]),
          strip.background = element_rect(color = colors["line"],
                                          fill = colors["backgournd"]),
          strip.text = element_text(color = colors["text"]),
          axis.text = element_text(color = colors["text"]),
          axis.line = element_line(color = colors["line"]),
          axis.ticks = element_line(color = colors["line"]),
          axis.title = element_text(color = colors["text"]),
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
generate_theme <- function(background, line, text) {
  inner <- function(...) {
    theme(plot.background = element_rect(fill = background),
          panel.background = element_rect(fill = background),
          panel.grid.major = element_line(color = line),
          panel.grid.minor = element_line(color = line),
          panel.border = element_rect(color = line, fill = NA),
          legend.background = element_rect(color = line,
                                           fill = background),
          legend.key = element_rect(fill = background),
          legend.title = element_text(color = text),
          legend.text = element_text(color = text),
          strip.background = element_rect(color = line,
                                          fill = backgound),
          strip.text = element_text(color = text),
          axis.text = element_text(color = text),
          axis.line = element_line(color = line),
          axis.ticks = element_line(color = line),
          axis.title = element_text(color = text),
          ...
    )
  }
  return(inner)
}

#' @importFrom ggplot2 theme
#' @export
theme_mixin <- function(base, colored, ...) {
  inner <- function(...) {
    base + colored + theme(...)
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
