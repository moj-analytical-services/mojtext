% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/incdec.R
\name{incdec}
\alias{incdec}
\title{Given a value representing a change, returns a character string that quantifies the change.}
\usage{
incdec(value, tense = "past")
}
\arguments{
\item{value}{a change to be quantified.}

\item{tense}{which tense you want the quantifying string to be in. Either
"past", "present", "singular" or "plural". "Past" by default.}
}
\description{
Given a value representing a change, returns a character string that quantifies the change.
}
\examples{
incdec(-1)  # returns "decreased by"
}
