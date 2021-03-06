#' Gini Coefficient
#'
#' Calculates weighted Gini coefficient, obtained as 2 * AUC - 1. Up to ties in \code{predicted} equivalent to Somer's D. The larger the Gini coefficient, the better.
#'
#' @param actual Observed values (0 or 1).
#' @param predicted Predicted values of any value (not necessarly between 0 and 1).
#' @param w Optional case weights.
#' @param ... Further arguments passed to \code{AUC}.
#' @return A numeric vector of length one.
#' @export
#' @examples
#' gini_coefficient(c(0, 0, 1, 1), 2 * c(0.1, 0.1, 0.9, 0.8))
#' gini_coefficient(c(0, 0, 1, 1), c(0.1, 0.6, 0.9, 0.5))
#' gini_coefficient(c(0, 0, 1, 1), c(0.1, 0.6, 0.9, 0.5), w = 1:4)
#' @seealso \code{\link{AUC}}.
gini_coefficient <- function(actual, predicted, w = NULL, ...) {
  -1 + 2 * AUC(actual = actual, predicted = predicted, w = w, ...)
}
