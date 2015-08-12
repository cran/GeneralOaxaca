\name{GeneralOaxaca-package}
\alias{GeneralOaxaca-package}
\docType{package}
\title{
\packageTitle{GeneralOaxaca}
}
\description{
\packageDescription{GeneralOaxaca}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{GeneralOaxaca}
\packageIndices{GeneralOaxaca}
}
\author{
\packageAuthor{GeneralOaxaca}

Maintainer: \packageMaintainer{GeneralOaxaca}
}
\references{
T. Bauer and M. Sinning. An extension of the Blinder-Oaxaca decomposition to nonlinear models (2008). Advances in Statistical Analysis, Springer-Verlag.
}
\keyword{ package }
\examples{
data("chicago")
formula=ln.real.wage~ age + female + LTHS + some.college + college + advanced.degree
BO_A <- GeneralOaxaca(formula,  family= Gamma, data=chicago, groupInd=chicago$foreign.born,B=100)
BO_A$twofold 
}
