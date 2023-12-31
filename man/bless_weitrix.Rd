% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weitrix.R
\name{bless_weitrix}
\alias{bless_weitrix}
\title{Bless a SummarizedExperiment as a weitrix}
\usage{
bless_weitrix(object, x_name, weights_name)
}
\arguments{
\item{object}{A SummarizedExperiment object.}

\item{x_name}{Name of the assay containing the observations.}

\item{weights_name}{Name of the assay containing the weights.}
}
\value{
A SummarizedExperiment object with metadata fields marking it as a weitrix.
}
\description{
Set metadata entries in a SummarizedExperiment object
so that it can be used as a weitrix.
}
\examples{
mat <- matrix(c(1,2,NA,3,NA,4), ncol=2)
weights <- matrix(c(1,0.5,0,2,0,1), ncol=2)
se <- SummarizedExperiment(assays=list(foo=mat, bar=weights))

weitrix <- bless_weitrix(se, "foo", "bar")

metadata(weitrix)
weitrix_x(weitrix)
weitrix_weights(weitrix)

}
