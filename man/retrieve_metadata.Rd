% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/retrieve_functions.R
\name{retrieve_metadata}
\alias{retrieve_metadata}
\title{Retrieves metadata for a specific table from Statistics Denmark}
\usage{
retrieve_metadata(table_id, base_url = "http://api.statbank.dk/v1/")
}
\arguments{
\item{table_id}{is the id of the table you want to call. You can get table ids
by calling the \link{retrieve_tables} function.}

\item{base_url}{is the base url for the API you wish to call. Statistics Denmark
can sometimes create custom API's that you can use by changing this
parameter.}
}
\value{
a list
}
\description{
The function retrieves a list with a lot of metadata about a certain table.
}
\details{
\describe{
  \item{id}{The id of the table.}
  \item{text}{A description of what the data in the table is about.}
  \item{unit}{What unit the data is in.}
  \item{contact}{Who to contact regarding the data.}
  \item{documentation}{Link to a web page with detailed description of the data.}
  \item{footnote}{A footnote if applicable.}
  \item{variables}{Details about the variables in the table. Is very useful for
      when using the \link{retrieve_data} function.}
}
}
\examples{
metadata <- statsDK::retrieve_metadata("PRIS111")
dplyr::glimpse(metadata)
}
