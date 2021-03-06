\name{asia}
\docType{data}
\alias{asia}
\title{Asia (synthetic) data set by Lauritzen and Spiegelhalter}
\description{

  Small synthetic data set from Lauritzen and Spiegelhalter (1988) about lung
  diseases (tuberculosis, lung cancer or bronchitis) and visits to Asia.

}
\usage{
data(asia)
}
\format{

  The \code{asia} data set contains the following variables:
  \itemize{

    \item \code{D} (\emph{dyspnoea}), a two-level factor with levels \code{yes}
      and \code{no}.
    \item \code{T} (\emph{tuberculosis}), a two-level factor with levels
      \code{yes} and \code{no}.
    \item \code{L} (\emph{lung cancer}), a two-level factor with levels
      \code{yes} and \code{no}.
    \item \code{B} (\emph{bronchitis}), a two-level factor with levels
      \code{yes} and \code{no}.
    \item \code{A} (\emph{visit to Asia}), a two-level factor with levels
      \code{yes} and \code{no}.
    \item \code{S} (\emph{smoking}), a two-level factor with levels \code{yes}
      and \code{no}.
    \item \code{X} (\emph{chest X-ray}), a two-level factor with levels
      \code{yes} and \code{no}.
    \item \code{E} (\emph{tuberculosis versus lung cancer/bronchitis}), a
      two-level factor with levels \code{yes} and \code{no}.

  }

}
\note{

  Lauritzen and Spiegelhalter (1988) motivate this example as follows:

  \dQuote{Shortness-of-breath (dyspnoea) may be due to tuberculosis, lung
  cancer or bronchitis, or none of them, or more than one of them. A recent
  visit to Asia increases the chances of tuberculosis, while smoking is known
  to be a risk factor for both lung cancer and bronchitis. The results of a
  single chest X-ray do not discriminate between lung cancer and tuberculosis,
  as neither does the presence or absence of dyspnoea.}

  Standard learning algorithms are not able to recover the true structure of
  the network because of the presence of a node (\code{E}) with conditional
  probabilities equal to both 0 and 1. Monte Carlo tests seems to behave
  better than their parametric counterparts.

  The complete BN can be downloaded from
  \url{https://www.bnlearn.com/bnrepository/}.

}
\source{

  Lauritzen S, Spiegelhalter D (1988). "Local Computation with Probabilities
	on Graphical Structures and their Application to Expert Systems (with
	discussion)". \emph{Journal of the Royal Statistical Society: Series B},
    \strong{50}(2):157--224.

}
\examples{
# load the data.
data(asia)
# create and plot the network structure.
dag = model2network("[A][S][T|A][L|S][B|S][D|B:E][E|T:L][X|E]")
\dontrun{graphviz.plot(dag)}
}
\keyword{datasets}
