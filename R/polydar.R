#' run polylidar
#'
#'
#' @param x input values (xy matrix, or flat vector of x-y pairs)
#' @param dim dim see polylidar doc
#' @param xyThresh xyThresh see polylidar doc
#' @param alpha alpha see polylidar doc
#' @param lmax lmax see polylidar doc
#' @param minTriangles minTriangles see polylidar doc
#'
#' @return nothing useful, int atm
#' @export
#'
#' @examples
#' polydar()
#' set.seed(24)
#' x <- matrix(rnorm(24), ncol = 2)
#'
#' system.time(polydar(x))
#' polydar(x, alpha = 20, xyThresh = 10, lmax = 2, minTriangles = 16)
#' ## much faster: system.time(geometry::delaunayn(x))
#' set.seed(24); plot(matrix(rnorm(24), ncol = 2)); lines(x[c(1,10,8,7,5,4, 1) + 1L, ])
polydar <- function(x = NULL,
                    dim = 2L,
                    xyThresh = 0.0,
                    alpha = 0.0,
                    lmax = 2.0,
                    minTriangles = 1L) {
  # std::vector<double> points = {
  #   0.0, 0.0,
  #   0.0, 1.0,
  #   1.0, 1.0,
  #   1.0, 0.0,
  #   5.0, 0.1,
  # };
  #
  if (is.null(x)) {
    ## the boilerplate simple-2d example from polylidar
    x <- simple2d
  }
  if (!is.numeric(x)) stop("input must be numeric")
  if (!is.null(dim(x))) {
    x <- as.vector(t(as.matrix(x[, 1:2])))
  }
  if (length(x) < 6) stop("input must at least be a triangle")
  if (minTriangles[1L] < 1) stop("minTriangles must be at least 1")
  if (lmax[1L] < 0) stop("lmax must be > 0")
  if (dim[1L] != 2) stop("dim must be 2")
  if (xyThresh[1L] < 0) stop("xyThresh must be > 0")
  idxlist <- rcpp_polydar(x, dim = as.integer(dim[1L]),
               xyThresh = as.double(xyThresh[1L]),
               alpha = as.double(alpha[1L]),
               lmax = as.double(lmax[1L]),
               minTriangles = as.integer(minTriangles[1L]))

  ## convert to 1-based (and add the start wtf)
  lapply(idxlist, function(x) c(x, x[1L]) + 1L)
}
