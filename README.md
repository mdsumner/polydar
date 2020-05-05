
<!-- README.md is generated from README.Rmd. Please edit that file -->

# polydar

<!-- badges: start -->

<!-- badges: end -->

A very raw port of [polylidar](https://github.com/JeremyBYU/polylidar)
to try building an R package with it.

What I did:

  - clone polylidar
  - cp polylidar/polylidar -R polydar/
  - cp polylidar/examples polydar/examples
  - mv polydar/polylidar polydar/src
  - create polydar/Makevars
  - cp polydar/examples/cpp/simple-2d.cpp
    polydar/src/simple-2d-polydar.cpp

and modified that to call what was main from R as `IntegerVector
polydar`.

Set up all the Rcpp and roxygen stuffs - you need `usethis::use_rcpp()`
and you need to ensure roxygen is applied when you build i.e. *check
‘Install and restart’ for roxygen*.

WIP

## TODO

  - [ ] convert to headers usage
  - [ ] input data from R
  - [ ] extract polygons and triangles

## Usage

None yet.

All it does is run the simple2d example:

``` r
polydar:::polydar()
#> integer(0)

#> Simple C++ Example of Polylidar
#> Polylidar took 0 milliseconds processing a 5 point cloud
#> Point indices of Polygon Shell: [3,0,1,2]

#> Detailed timings in milliseconds:
#> Delaunay Triangulation: 0.01; Mesh Extraction: 0.00; Polygon Extraction: 0.01
```

-----

## Code of Conduct

Please note that the polydar project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
