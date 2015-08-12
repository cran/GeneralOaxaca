\name{statBO}
\alias{statBO}
\title{
statBO}
\description{
\code{statBO} performs a Blinder-Oaxaca decomposition for generalized linear regression models for the individual with
\code{indice} in the \code{data}. \code{statBO} is used for the bootstrap estimation of the standard errors }
\usage{
statBO(data, formula, family, groupRef, groupInd, indice)
}
\arguments{
\item{data}{an optional data frame, list or environment (or object coercible by as.data.frame to a data frame) containing the variables in the model. If not found in data, the variables are taken from \code{environment(formula)}.
}
  \item{formula}{ an object of class "\code{\link[stats]{formula}}" (or one that can be coerced to that class): a symbolic description of the model to be fitted.}
  \item{family}{a description of the error distribution and link function to be used in the model. (See \code{\link[stats]{family}} for details of family functions.)
}
  
   \item{groupRef}{Group of reference for the decomposition, by default Group A.}
  \item{groupInd}{ is an indicator variable that is TRUE (or equal to 1) when an observation belongs to Group A, and FALSE (or equal to 0) when it belongs to Group B}

  \item{indice}{ identification of each individual in \code{data}. Useful for the call of the \code{\link[boot]{boot}} function.

}
}
\value{
\item{char}{characteristic part in the twofold decomposition}
\item{coef}{coefficient part in the twofold decomposition}
\item{diff}{diff of the dependent variable between group}
\item{char3}{characteristic part in the threefold decomposition}
\item{coef3}{coefficient part in the threefold decomposition}
\item{int}{interaction part in the threefold decomposition}
}
\author{
Aurelien Nicosia and Simon Baillargeon-Ladouceur}

\seealso{
See Also as \code{\link[GeneralOaxaca]{GeneralOaxaca}}
}

