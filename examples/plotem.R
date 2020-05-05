## not getting much good out of this
plotem <- function(x, ...) {
  x <- x[order(x[,1], x[,2]), ]
  l <- polydar(x, ...)
  bad <- function(i) {
    i[i > 0 & i < nrow(x)]

  }
  plot(x, pch = ".")
  for (i in seq_along(l)) {
    #if (is.null(l[[i]])) {print(i); return()}
    lines(x[bad(l[[i]]), ], col = "red")
  }

}

building2 <- read.csv("../polylidar/tests/fixtures/building2.csv")
building2 <- as.matrix(building2[,1:2])

plotem(building2, alpha=0.5, xyThresh=0.0)

plotem(simple2d)

pts <- readRDS("examples/pts.rds")  ## from hypertidy/hypertidy.logo
plotem(pts, minTriangles = 10)
