\name{GeneralOaxaca}
\alias{GeneralOaxaca}
\title{
General Blinder-Oaxaca Decomposition
}
\description{
Blinder-Oaxaca decomposition for generalized linear model. It provide the twofold and threefold decomposition describe in Bauer and Sinning (2008), as the characteristic, coefficient and interaction part of the observed difference on the dependent variable between the two groups. Bootstrapped standard errors are calculated (e.g., Efron, 1979). 
}
\usage{
GeneralOaxaca(formula, family = stats::gaussian, data,
groupInd, groupRef = "A", B = 1000, control = list())
}
\arguments{
  \item{formula}{ an object of class "\code{\link[stats]{formula}}" (or one that can be coerced to that class): a symbolic description of the model to be fitted.}
  \item{family}{a description of the error distribution and link function to be used in the model. (See \code{\link[stats]{family}} for details of family functions.)
}
  \item{data}{an optional data frame, list or environment (or object coercible by as.data.frame to a data frame) containing the variables in the model. If not found in data, the variables are taken from \code{environment(formula)}.
}
 
  \item{groupInd}{ is an indicator variable that is TRUE (or equal to 1) when an observation belongs to Group A, and FALSE (or equal to 0) when it belongs to Group B}
  \item{groupRef}{Group of reference for the decomposition, by default Group A.}
  \item{B}{number of bootstrap replications for the calculation of standard errors}
  \item{control}{a list of parameters for controlling the fitting process.}
}
\value{
GeneralOaxaca returns the following results:
\item{regoutput }{List of two elements (names GroupA and GroupB) with the standard generalized linear model output in each group. }
\item{twofold }{ the twofold decomposition with the respect \code{groupInd}. }
\item{threefold }{ the threefold decomposition with the respect \code{groupInd}. }
\item{n}{ the size of each respective group. }
\item{summaryStat}{ descriptive statistic of the independent variable in each group. }



}
\details{
The \code{twofold} and \code{threefold} decomposition contains the characteristic and coefficient part (also the interaction for the threefold) of the decomposition, with their proportion with respect to the observed difference between groups. It also give the z value, p value and 95\% confidence intervals computed using the bootstrapped standard errors.
The \code{regoutput} are the results of the generalized linear model applied to data in each group (A and B). See \code{\link[stats]{glm}} for more details about the outputs.

}
\references{
T. Bauer and M. Sinning. An extension of the Blinder-Oaxaca decomposition to nonlinear models (2008). Advances in Statistical Analysis, Springer-Verlag.

B. Efron. Bootstrap Methods: Another Look at the Jackknife (1979). Annals of Statistics, 7(1), 1-26.
}
\author{
Aurelien Nicosia and Simon Baillargeon-Ladouceur}
\note{
The function can perform the Blinder-Oaxaca decomposition for any generalized linear model supported by the \code{\link[stats]{glm}} function.
}



\examples{
data("chicago")
chicago$real.wage=exp(chicago$ln.real.wage)
formula=ln.real.wage~ age + female + LTHS + some.college + college + 
advanced.degree

# exemple with gamma distribution
BO_A <- GeneralOaxaca(formula,  family= Gamma, data=chicago, 
groupInd=chicago$foreign.born,B=100)
BO_A$twofold 
BO_A$regoutput$GroupA 
BO_A$threefold 

}

\keyword{ Oaxaca }
\keyword{decomposition }
