% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prop_within.R
\name{prop_within}
\alias{prop_within}
\title{Proportion Within}
\usage{
prop_within(actual, predicted, w = NULL, tol = 1, ...)
}
\arguments{
\item{actual}{Observed values.}

\item{predicted}{Predicted values.}

\item{w}{Optional case weights.}

\item{tol}{Predictions in [actual - tol, actual + tol] count as within.}

\item{...}{Further arguments passed to \code{weighted_mean}.}
}
\value{
A numeric vector of length one.
}
\description{
Calculates weighted proportion of predictions that are within a given tolerance around the actual values. The larger the value, the better.
}
\examples{
prop_within(1:10, c(1:9, 12))
prop_within(1:10, c(1:9, 12), w = rep(1, 10))
prop_within(1:10, c(1:9, 12), w = 1:10)
data <- data.frame(act = 1:10, pred = c(1:9, 12), w = 1:10)
multi <- multi_metric(fun = prop_within, tol = 0:3)
performance(data, actual = "act", predicted = "pred", w = "w",
  metrics = multi, key = "Proportion within")
}
