% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gghvtHmap_old.R
\name{gghvtHmap_old}
\alias{gghvtHmap_old}
\title{hvtHmap}
\usage{
gghvtHmap_old(hvt.results, dataset, child.level, hmap.cols, color.vec = NULL,
  line.width = NULL, centroid.size = 3, pch1 = 19, pch2 = 1,
  palette.color = 1, show.points = F, asp = 1, ask = T,
  tess.label = NULL, label.size = 0.5)
}
\arguments{
\item{hvt.results}{List. A list of hvt.results obtained from the HVT
function.}

\item{dataset}{Data frame. The input data set.}

\item{child.level}{Numeric. Indicating the level for which the heat map is
to be plotted.}

\item{hmap.cols}{Vector. A vector with column names (or) column indices of
the dataset indicating the variables for which the heat map is to be
plotted.}

\item{color.vec}{Vector. A color vector such that length(color.vec) =
(child.level - 1). (default = NULL)}

\item{line.width}{Vector. A line width vector such that length(line.width) =
(child.level - 1). (default = NULL)}

\item{centroid.size}{Numeric. Indicating the centroid size of the first
level. (default = 3)}

\item{pch1}{Numeric. Indicating the parent level centroid's symbol type.
(default = 19)}

\item{pch2}{Numeric. Indicating the child level centroid's symbol type.
(default = 1)}

\item{palette.color}{Numeric. Indicating the heat map color palette. 1 -
rainbow, 2 - heat.colors, 3 - terrain.colors, 4 - topo.colors, 5 -
cm.colors, 6 - seas color. (default = 1)}

\item{show.points}{Logical. Indicating if the size of the centroids should
be relative to the number of data points in that cluster. (default = FALSE)}

\item{asp}{Numeric. Indicating the aspect ratio type. For flexible aspect
ratio set, asp = NA. (default = 1)}

\item{ask}{Logical. If TRUE (and the R session is interactive) the user is
asked for input, before a new figure is drawn. (default = TRUE)}

\item{tess.label}{Vector. A vector for labelling the tessellations. (default
= NULL)}

\item{label.size}{Numeric. The size by which the tessellation labels should
be scaled. (default = 0.5)}
}
\description{
Heat Map over Hierarchical Voronoi Tessellations
}
\details{
The output of the \code{HVT} function has all the required information about
the HVT. Now a heat map is overlayed over this HVT. The user defines the
level and also those variables of the data for which the heat map is to be
plotted. Now for each variable a separate heat map is plotted. The plot area
is divided into 2 screens where the first screen is relatively large and
will have the heat map. The second screen is small and contains the gradient
scale. To plot the heat map, the data is first normalized. The gradient
scale is divided into 'n' regions(500 is the set default). Using the
normalized data, the different regions into which the data items fall are
found. Each data item is now having a region on the gradient scale. This
color is filled in the tile corresponding to the data item. This procedure
is done for all the tiles for that level to get the complete heat map. Once
the heat map is ready, the higher level tessellations are plotted to
represent the hierarchies. The size of the centroids, the thickness of the
lines and the color of the tessellation lines can be given as input by the
user. Appropriate values for these parameters should be given to identify
the hierarchies properly. In the second screen the gradient scale is
plotted. The heat maps and hierarchical tessellations are obtained for all
the desired variables.
}
\examples{




data("iris",package="datasets")
iris <- iris[,1:2]
hvt.results <- HVT(iris, nclust = 6, depth = 1, quant.err = 0.2, 
projection.scale = 10, normalize = TRUE)

hvtHmap(hvt.results, iris, child.level = 1,hmap.cols =c(1:2), show.points=TRUE)




}
\seealso{
\code{\link{plotHVT}}
}
\author{
Meet K. Dave <dave.kirankumar@mu-sigma.com>
}
\keyword{hplot}
