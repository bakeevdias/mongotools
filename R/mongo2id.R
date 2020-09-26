#' @title Extract timestamp from MongoDB ObjectId
#'
#' @description Extract timestamp from Mcc
#'
#' @param id MongoDB ObjectId(s)
#'
#' @return Gives the timestamp from the id(s)
#' @export
#'
#' @examples
#'#single id
#'mongoid2date("5f1697fa3aa7a77b2323cada")
#'
#'#multiple ids
#'id <- c("5f1697fa3aa7a77b2323cada","5f6e917c043012678d27e3f4","5f6e917c043012678d27e3f5")
#'df <- data.frame(id)
#'df$dates <- mongoid2date(df$id)

mongoid2date <- function(id) {
  id=as.POSIXct(strtoi(substr(id,1,8), 16L),
                origin="1970-01-01")
  return(id)
}
