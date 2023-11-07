
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SteveNumerical

<!-- badges: start -->
<!-- badges: end -->

The goal of SteveNumerical is to provide some functions that can help
people generate some specific statistics of a dataframe efficiently. The
first function documented in this package is “outlier_counter”, which
will return the number of outliers in each column of a given dataframe.

## Installation

You can install the development version of SteveNumerical like so:

``` r
install_github("https://github.com/stat545ubc-2023/SteveNumerical.git")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(SteveNumerical)
## basic example code
outlier_counter("ABC")
#> Error in outlier_counter("ABC"): Please pass a dataframe
outlier_counter(iris)
#>  Sepal.Length   Sepal.Width  Petal.Length   Petal.Width       Species 
#>           "0"           "4"           "0"           "0" "Not Numeric"
```
