\name{chicago}
\alias{chicago}
\docType{data}
\title{
Labor market and demographic data for employed Hispanic workers in metropolitan Chicago}
\description{
Data from a 2013 sample of employed Hispanic workers in metropolitan Chicago. It is a subset of the 2013 Current Population Survey (CPS) Outgoing Rotation Groups (ORG) data set provided by the Center for Economic and Policy Research in Washington, DC (CEPR, 2014).
}
\usage{data("chicago")}
\format{
  A data frame with 712 observations on the following 9 variables. The 9 variables contain labor market and demographic information on a sample of employed Hispanic workers in the Chicago metropolitan area.
  \describe{
    \item{\code{age}}{the worker's age, expressed in years}
    \item{\code{female}}{an indicator for female gender}
    \item{\code{foreign.born}}{an indicator for foreign-born status}
    \item{\code{LTHS}}{an indicator for having completed less than a high school (LTHS) education}
    \item{\code{high.school}}{an indicator for having completed a high school education}
    \item{\code{some.college}}{an indicator for having completed some college education}
    \item{\code{college}}{an indicator for having completed a college education}
    \item{\code{advanced.degree}}{an indicator for having completed an advanced degree}
    \item{\code{ln.real.wage}}{the natural logarithm of the worker's real wage (in 2013 U.S. dollars)}
}}
\source{
Center for Economic and Policy Research (CEPR). 2014. CPS ORG Uniform Extracts, Version 1.9 . Washington, DC.}
\examples{
data("chicago")
summary(chicago)}
\keyword{datasets}
