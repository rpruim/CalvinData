% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WildSample.R
\docType{data}
\name{WildSample}
\alias{WildSample}
\title{Chris Wild Bootstrapping Example}
\format{

}
\source{
\url{https://www.youtube.com/watch?v=iN-77YVqLDw&ab_channel=WildAboutStatistics}
}
\usage{
data(WildSample)
}
\description{
This small data set is used in a video by Chris Wild to introduce the bootstrap.
}
\details{
The variables are
\itemize{
\item \code{name} -- the subject's name
\item \code{sex} -- M or F
\item \code{age} -- the subject's age
\item \code{BPSysAve} -- the subject's average systolic blood pressure.
}

In \code{Malaria2} these are abbreviated to a single letter.
}
\examples{
require(mosaic)
resample(WildSample)
}
\keyword{datasets}
