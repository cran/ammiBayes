\name{diagnosis.ammiBayes}
\alias{diagnosis.ammiBayes}

\title{
  Bayesian AMMI for ordinal data
}

\description{
    Extract the MCMC chain for diagnosis
}

\usage{
diagnosis.ammiBayes(x, pars=NULL)
}

\arguments{
  \item{x}{An object of class ammiBayes}
  \item{pars}{It should be set, such as "Genotype", "Rep", "L", "Gen.PC1", "Gen.PC2", "Env.PC1", "Env.PC2", "Comp.var". See details }
}

\details{
    The output is compatible for diagnosis with the \code{coda} and \code{bayesplot} packages. 
    Examples can be seen on the website: \code{\link[bayesplot]{bayesplot}}
}

\author{
    Cristian Tiago Erazo Mendes (\email{tiagoerazo@gmail.com})\cr
    Carlos Pereira da Silva (\email{ccpsilva81@hotmail.com})\cr
    Julio Silvio de Sousa Bueno Filho (\email{jssbueno@ufla.br})\cr
    Fabio Mathias Correa (\email{f.correa@ru.ac.za})
}


\examples{
\donttest{

# Not run
library(ammiBayes)
library(bayesplot)
library(ggpubr)

data(ammiData)

Env  <- factor(ammiData$amb)
Rep <- factor(ammiData$rep)
Gen  <- factor(ammiData$gen)
Y  <- ammiData$prod

model <- ammiBayes(Y=Y, Gen=Gen, Env=Env, Rep=Rep, iter=1000, burn=10, jump=2, chains=2)

gen.diagnosis <- diagnosis.ammiBayes(model, pars="Genotype")


mcmc_trace(gen.diagnosis)
mcmc_dens_overlay(gen.diagnosis)
mcmc_areas(gen.diagnosis)

dens <- bayesplot::mcmc_dens_overlay(gen.diagnosis)
trac <- bayesplot::mcmc_trace(gen.diagnosis, facet_args=list(ncol=1))

ggpubr::ggarrange(trac,dens, common.legend=TRUE)


}}

\keyword{package}

