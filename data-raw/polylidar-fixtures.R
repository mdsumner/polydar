simple2d <-
     matrix(c(0.0, 0.0,
       0.0, 1.0,
       1.0, 1.0,
       1.0, 0.0,
       5.0, 0.1), ncol = 2L, byrow = TRUE)
usethis::use_data(simple2d, overwrite = TRUE)

hardcase1 <- as.matrix(read.csv(
  "https://raw.githubusercontent.com/JeremyBYU/polylidar/master/tests/fixtures/hardcase1.csv"))
usethis::use_data(hardcase1, overwrite = TRUE)

