\name{globalGSA-package}
\alias{globalGSA-package}
\alias{globalGSA}
\alias{Selected_genes}
\alias{EstimatePvalue}
\alias{Trunkpoint}
\alias{ff}
\alias{pvalFmla}
\alias{CreateFormula}
\alias{GeneratePvalues}
\alias{runPermut}
\alias{runPvalues}
\alias{Codcodom}
\alias{Coddom}
\alias{Codrec}
\alias{Codadd}
\alias{data}
\alias{gene_list}
\docType{package}


\title{
Gene-set analysis for combining p-values in a joint test of association between a phenotype and a set of genetic variants (SNPs). Previously, a global test for the best inheritance model of each SNP is performed.}

\description{
This package implements three different Gene-set analysis (GSA) methods for combining individual p-values of a set of SNPs. Each method provides a p-value for a joint test of association between the phenotype and the specified set of genetic variants. The three implemented methods  are: Fisher method [1], Simes method [2] and ARTP method [3]. 

Since the SNPs in a set may follow different modes of inheritance, previously to the GSA, a global test for the best inheritance model (dominant, recessive, log-additive and co-dominant) is performed on every SNP. The permutational p-value of the best model is obtained. 
}


\details{
\tabular{ll}{
Package: \tab globalGSA\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-09-22\cr
License: \tab GPL (>= 2)\cr
}
}

\references{

[1] Fisher, R.A. (1925). Statistical Methods for Research Workers. ISBN 0-05-002170-2.


[2] Simes, R.J. (1986). An Improved Bonferroni Procedure for Multiple Tests of Significance. Biometrika, 73, 751-754.

[3] Yu, K. Li, Q. Bergen, A.W. Pfeiffer, R.M. Rosenberg, P.S. Caporaso, N. Kraft, P. and Chatterjee,N. (2009). Pathway analysis by adaptive combination of P-values. Genet, Epidemiol. December; 33(8): 700-709.

}

\author{
Natalia Vilor, M.Luz Calle

Maintainer: natalia.vilor@uvic.cat
}

\keyword{ package }
\keyword{ globalARTP }
\keyword{ globalFisher }
\keyword{ globalSimes }