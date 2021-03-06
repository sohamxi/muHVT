% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LBGVQ.R
\name{LBGVQ}
\alias{LBGVQ}
\title{Performs Vector Quantization by codebook split method}
\usage{
LBGVQ(dataset, quant.err, projection.scale)
}
\arguments{
\item{dataset}{Data frame. A data frame with different columns is given as
input.}

\item{quant.err}{Numeric. A number indicating the quantization error
treshold.}

\item{projection.scale}{Numeric. A number indicating the scale factor for
the tesselations so as to visualize the sub-tesselations well enough.}
}
\value{
A list that contains the hierarchical tesselation information. This
list has to be given as input argument to plot the tessellations.
\item{[[1]] }{List. Information about the tesselation co-ordinates}
\item{[[2]] }{List. Information about the polygon co-ordinates} \item{[[3]]
}{List. Information about the hierarchical vector quantized data}
}
\description{
Main function to perform vector quantization by codebook split method
}
\details{
This is the main function to construct hierarchical voronoi tessellations.
The \code{VQ_codebookSplit} function is called from this function. The
output of the \code{VQ_codebookSplit} function is clustered data which will
be the input for constructing tessellations. The level is always one as the
\code{VQ_codebookSplit} algorithm gives out clusters whose quantization
error criteria is met. The data is then represented in 2d coordinates and
the tessellations are plotted using these coordinates as centroids.
Tessellations are plotted using these transformed points as centroids. The
lines in the tessellations are chopped in places so that they do not
protrude outside the parent polygon.
}
\examples{


data("iris",package="datasets")
iris <- iris[,1:2]
vq.results <- list()
vq.results <- LBGVQ(iris, quant.err = 0.5, 
projection.scale = 10)


plotHVT(vq.results, line.width = c(3), color.vec = c("blue"))


}
\seealso{
\code{\link{plotHVT}} \cr \code{\link{hvtHmap}}
}
\author{
Meet K. Dave <dave.kirankumar@mu-sigma.com>
}
\keyword{hplot}
