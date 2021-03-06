% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mongo2id.R
\name{mongoid2date}
\alias{mongoid2date}
\title{Extract timestamp from MongoDB ObjectId}
\usage{
mongoid2date(id)
}
\arguments{
\item{id}{MongoDB ObjectId(s)}
}
\value{
Gives the timestamp from the id(s)
}
\description{
Extract timestamp from Mcc
}
\examples{
#single id
mongoid2date("5f1697fa3aa7a77b2323cada")

#multiple ids
id <- c("5f1697fa3aa7a77b2323cada","5f6e917c043012678d27e3f4","5f6e917c043012678d27e3f5")
df <- data.frame(id)
df$dates <- mongoid2date(df$id)
}
