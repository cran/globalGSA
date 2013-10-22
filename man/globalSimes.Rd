\name{globalSimes}
\alias{globalSimes}
\alias{ans3}
\alias{ans31}

\title{
Global Simes' combination method.
}

\description{
This function provides the p-value for a joint test of association between a phenotype and a set of genetic variants (SNPs) using the Simes method [1] after a global test for the best mode of inheritance of every SNP. The final gene-p-value is obtained from the permutational null distribution of the test statistic

}
\usage{
globalSimes(data, B, gene_list, Gene = "all", addit = FALSE,
covariable = NULL, family = binomial)
}

\arguments{
\item{data}{
Data frame containing the variables in the model. The first column is the dependent variable which must be a binary variable defined as factor (in case-control studies, the usual codification is 1 for cases and 0 for controls). SNP values may be codified in a numerical form (0,1,2) denoting the number of minor alleles, or using a character form where the two alleles are specified, without spaces, tabs or any other symbol between the two alleles.
}

\item{B}{
Number of permutations considered in the permutational procedure.
}

\item{gene_list}{
File that provides the name of the set (for instance, gene) where each SNP belongs. This file has two columns: the SNP-Id ("Id"), and the Gene-Id ("Gene"). The SNP-Id must have the same label as the colnames of the data file.
}

\item{Gene}{
Name of the gene that we want to analyze. The default value is Gene= "all" that indicates that the p-values of all SNPs in the database are to be combined. In this case it is not necessary to specify the gene_list file. In other case, we need to specify the name of the gene, for instance, Gene = "Gene1", and also the gene_list file.
   
}

\item{addit}{
logical to determine if only an additive inheritance model should be considered in the global Test or, conversely, if we want to consider all possible inheritance models (dominant, recessive, log-additive and co-dominant). By default, addit = FALSE.
}

 \item{covariable}{
Data frame containing the covariables in the model. Each column represents one covariable. By default, covariable=NULL.

}
  \item{family}{
 This can be a character string naming a family distribution. By default, family=binomial.
}
}

\value{
 List with the following components:
 \item{nPerm }{Number of permutations.}
 \item{Gene }{Considered Gene.}
 \item{genevalue }{gene-pvalue.}
}

\references{
[1] Simes, R.J. (1986). An Improved Bonferroni Procedure for Multiple Tests of Significance. Biometrika, 73, 751-754.
}


\examples{
# load the included example dataset. 
# This is a simulated case/control study data set 
# with 2000 patients (1000 cases / 1000 controls) 
# and 10 SNPs, where all of them have 
# a direct association with the outcome:
data(data)
#globalSimes(data, B=1000,  Gene="all", addit=FALSE)

# it may take some time,
# hence the result of this example is included:
data(ans31)

# You can test:
globalSimes(data, B=1,  Gene="all", addit=FALSE)

# We consider that the first four SNPs 
# are included in "Gene1", 
# and the other six SNPs
# are included in "Gene2":
data(gene_list)
#globalSimes(data, B=1000, gene_list=gene_list, Gene="Gene1", addit=FALSE)

# it may take some time,
# hence the result of this example is included:
data(ans3)

# You can test:
globalSimes(data, B=1, gene_list=gene_list, Gene="Gene1", addit=FALSE)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{globalSimes}
\keyword{Simes' combination global test}

