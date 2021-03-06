% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multi_modal.R
\name{GetAssayData}
\alias{GetAssayData}
\title{Accessor function for multimodal data}
\usage{
GetAssayData(object, assay.type = "RNA", slot = "data")
}
\arguments{
\item{object}{Seurat object}

\item{assay.type}{Type of assay to fetch data for (default is RNA)}

\item{slot}{Specific information to pull (i.e. raw.data, data, scale.data,...). Default is data}
}
\value{
Returns assay data
}
\description{
Pull information for specified stored dimensional reduction analysis
}
\examples{
# Simulate CITE-Seq results
df <- t(x = data.frame(
  x = round(x = rnorm(n = 80, mean = 20, sd = 2)),
  y = round(x = rbinom(n = 80, size = 100, prob = 0.2)),
  row.names = pbmc_small@cell.names
))
pbmc_small <- SetAssayData(
  object = pbmc_small,
  assay.type = 'CITE',
  new.data = df,
  slot = 'data'
)
GetAssayData(object = pbmc_small, assay.type = 'CITE', slot = 'data')

}
