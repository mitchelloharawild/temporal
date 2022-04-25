scale_type.moment <- function(x) {
  "moment"
}

waiver <- function() {
  require_package("ggplot2")
  ggplot2::waiver()
}

is.waive <- function(x) inherits(x, "waiver")
is.sec_axis <- function(x) inherits(x, "AxisSecondary")


set_sec_axis <- function(sec.axis, scale) {
  require_package("ggplot2")
  if (!is.waive(sec.axis)) {
    if (is.formula(sec.axis)) sec.axis <- ggplot2::sec_axis(sec.axis)
    if (!is.sec_axis(sec.axis)) abort("Secondary axes must be specified using 'sec_axis()'")
    scale$secondary.axis <- sec.axis
  }
  return(scale)
}

#' @export
scale_x_moment <- function(...) {
  require_package("ggplot2")
  sc <- ggplot2::scale_x_continuous(...)
}
