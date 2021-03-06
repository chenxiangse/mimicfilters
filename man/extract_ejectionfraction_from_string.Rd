% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_ejection_fraction.R
\name{extract_ejectionfraction_from_string}
\alias{extract_ejectionfraction_from_string}
\title{Extract a vector of ejection fraction values from a echocardiogram report.}
\usage{
extract_ejectionfraction_from_string(temp_str)
}
\arguments{
\item{temp_str}{A string containing a raw echocardiogram report}
}
\value{
A vector of extracted ejection fraction values
}
\description{
The input must be a single string. Newlines will be removed and the text will
be coereced to lowercase.
For string-based severity descriptors (severe, moderate, mild, and normal),
the text is split by double newline ('\code{\\n\\n}') and then period '\code{.}'
to separate sentences. The sentences are filtered to those that refer to
left ventricular systolic function or dysfunction. The remaining sentences
are classified by those that contain each of the four descriptors and these
are translated into numeric definitions as
\code{severe = c(5,29)}
\code{moderate = c(31,39)}
\code{mild = c(41,49)}
\code{normal = c(51,99)}
}
\examples{
# some fundamental types
temp_str = "severely depressed left ventricular systolic function"
extract_ejectionfraction_from_string(temp_str)
echo_list = list( "LVEF > 55\%", "LVEF = 20 - 30\%")
lapply(echo_list, extract_ejectionfraction_from_string)

}

