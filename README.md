
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mongotools

<!-- badges: start -->

<!-- badges: end -->

The goal of mongotools Rpackage is to provides some functions which may
be useful when working with MongoDB and Rpackages related to it. For now
it has one function:

  - mongoid2date: Get timestamp from MongoDB ID inside Rstudio.

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("bakeevdias/mongotools")
```

## Example

Example code of function mongoid2date which extracts timestamp from
MongoDB ObjectId(s).

``` r
library(mongotools)

#single id
mongoid2date("5f1697fa3aa7a77b2323cada")
#> [1] "2020-07-21 09:23:38 CEST"

#multiple ids
id <- c("5f1697fa3aa7a77b2323cada","5f6e917c043012678d27e3f4","5f6e917c043012678d27e3f5")
df <- data.frame(id)
df$dates <- mongoid2date(df$id)
```
