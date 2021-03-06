% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R_funclib_movAPA.r
\name{samplePACds}
\alias{samplePACds}
\title{Sample a PACdataset}
\usage{
samplePACds(pacds, N, nPAT = 1)
}
\arguments{
\item{pacds}{a PACdataset}

\item{N}{number of sampled PACs. If N>nrow(pacds), then do not sampling.}

\item{nPAT}{filter PACs with total tagnum>=nPAT before sampling.}
}
\value{
a subset of PACdataset.
}
\description{
samplePACds returns a random subset of PACdataset.
}
\examples{
data(PACds)
pacds=subsetPACds(PACds, N=1000)
}
\seealso{
[subsetPACds()] to get a subset PACdataset.

Other PACdataset functions: 
\code{\link{PACdataset-class}},
\code{\link{PACds}},
\code{\link{annotateByKnownPAC}()},
\code{\link{annotateByPAS}()},
\code{\link{annotatePAC}()},
\code{\link{countOvpPACds}()},
\code{\link{ext3UTRPACds}()},
\code{\link{findOvpPACds}()},
\code{\link{get3UTRAPAds}()},
\code{\link{makeExamplePACds}()},
\code{\link{mergePACds}()},
\code{\link{normalizePACds}()},
\code{\link{plotPACdsStat}()},
\code{\link{rbind}()},
\code{\link{readPACds}()},
\code{\link{removePACdsIP}()},
\code{\link{scPACds}},
\code{\link{subsetPACds}()},
\code{\link{writePACds}()}
}
\concept{PACdataset functions}
