#' Outlier Counter
#'
#' @export
#'
#' @description
#' 'Outlier Counter' will return the number of outliers in each numeric column of a given dataframe.
#' Here outlier is defined as any number above Q3+1.5IQR or below Q1-1.5IQR (NA will be omitted). If
#' a column is not numeric, then it will returns "Not Numeric". If the given parameter is not
#' dataframe, it will return an error.
#'
#' @param df
#' The only parameter that 'Outlier Counter' takes is an arbitrary dataframe. Therefore intuitively I
#' named it as "df".
#'
#' @return
#' The function will return a vector of characters which indicates either the number of outliers in
#' each column or "Not Numeric" if the corresponding column is not numeric. If the given parameter is
#' not a dataframe, it will return an error.
#'
#' @examples
#' outlier_counter("ABC")
#' Error in outlier_counter("ABC") : Please pass a dataframe
#' outlier_counter(iris)

outlier_counter <- function(df){
  if(is.data.frame(df)){
    column_outlier_counter <- function(x){
      if(is.numeric(x)){
        x = na.omit(x)
        outlier_amount = 0
        for(i in x){
          if(i>quantile(x,0.75)+1.5*IQR(x)|
             i<quantile(x,0.25)-1.5*IQR(x)){
            outlier_amount = outlier_amount+1
          }
        }
        outlier_amount
      }
      else {"Not Numeric"}
    }
    sapply(df, column_outlier_counter)
  }
  else{
    stop("Please pass a dataframe")
  }
}
library(devtools)
