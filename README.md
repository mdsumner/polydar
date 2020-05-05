
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
  - [x] input data from R
  - [x] input configuration from R
  - [ ] extract polygons and triangles
  - [ ] explore configuration and examples

## Not a proper R package yet

Still doing naughty stuff so beware.

    R CMD check results ────────────────────────────────────── polydar 0.0.1 ────
    Duration: 45.1s
    
    > checking if this is a source package ... WARNING
      Subdirectory ‘src’ contains:
        glue.hpp
      These are unlikely file names for src files.
    
    > checking Rd metadata ... WARNING
      Rd files with duplicated alias 'polydar':
        ‘polydar-package.Rd’ ‘polydar.Rd’
    
    > checking for GNU extensions in Makefiles ... WARNING
      Found the following file(s) containing GNU extensions:
        examples/cpp/Makefile
      Portable Makefiles do not use GNU extensions such as +=, :=, $(shell),
      $(wildcard), ifeq ... endif, .NOTPARALLEL See section ‘Writing portable
      packages’ in the ‘Writing R Extensions’ manual.
    
    > checking top-level files ... NOTE
      Non-standard file/directory found at top level:
        ‘examples’
    
    > checking pragmas in C/C++ headers and code ... NOTE
      Files which contain pragma(s) suppressing diagnostics:
        ‘src/include/parallel_hashmap/phmap.h’
        ‘src/include/parallel_hashmap/phmap_bits.h’
    
    > checking compiled code ... NOTE
      File ‘polydar/libs/polydar.so’:
        Found ‘_ZSt4cerr’, possibly from ‘std::cerr’ (C++)
          Object: ‘polylidar.o’
        Found ‘_ZSt4cout’, possibly from ‘std::cout’ (C++)
          Objects: ‘polylidar.o’, ‘simple-2d-polydar.o’
      
      Compiled code should not call entry points which might terminate R nor
      write to stdout/stderr instead of to the console, nor use Fortran I/O
      nor system RNGs.
      
      See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
    
    0 errors ✓ | 3 warnings x | 3 notes x
    Error: R CMD check found WARNINGs
    Execution halted
    
    Exited with status 1.

## Usage

None yet. Cannot make sense of output atm. 

-----

## Code of Conduct

Please note that the polydar project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
