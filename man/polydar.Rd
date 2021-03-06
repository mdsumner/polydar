% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polydar.R
\name{polydar}
\alias{polydar}
\title{run polylidar}
\usage{
polydar(
  x = NULL,
  dim = 2L,
  xyThresh = 0,
  alpha = 0,
  lmax = 2,
  minTriangles = 1L,
  MAX_ITER = 200
)
}
\arguments{
\item{x}{input values (xy matrix, or flat vector of x-y pairs)}

\item{dim}{dim see polylidar doc}

\item{xyThresh}{xyThresh see polylidar doc}

\item{alpha}{alpha see polylidar doc}

\item{lmax}{lmax see polylidar doc}

\item{minTriangles}{minTriangles see polylidar doc}

\item{MAX_ITER}{MAX_ITER see polylidar doc}
}
\value{
nothing useful, int atm
}
\description{
run polylidar
}
\examples{
polydar()
set.seed(24)
x <- matrix(rnorm(24), ncol = 2)

system.time(polydar(x))
polydar(x, alpha = 20, xyThresh = 10, lmax = 2, minTriangles = 16)

set.seed(24); plot(matrix(rnorm(24), ncol = 2)); lines(x[c(1,10,8,7,5,4, 1) + 1L, ])
}
