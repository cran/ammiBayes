\name{ammiBayes}
\alias{ammiBayes}

\title{
  Bayesian AMMI for ordinal data
}

\description{
    Run the AMMI Bayesian model for ordinal data.
}

\usage{
ammiBayes(Y=Y, Gen=Gen, Env=Env, Rep=Rep, 
          iterations=3000, jump=2, burn=500,
          Var.error=0.5, Var.env=0.5, Var.gen=0.5,
          chains=2)
}

\arguments{
  \item{Y}{Response variable vector}
  \item{Gen}{Genotype effects vector. Must be defined as factor}
  \item{Env}{Environmental effects vector. Must be defined as factor} 
  \item{Rep}{Repetition vector. Must be defined as factor} 
  \item{iterations}{Total of iterations after burnin and jumo}
  \item{jump}{Jump of iterations}
  \item{burn}{Initial burn}
  \item{Var.error}{Priori for the variance of error. Default is 0.5}
  \item{Var.env}{Priori for the variance of environment. Default is 0.5}
  \item{Var.gen}{Priori for the variance of genotype. Default is 0.5}
  \item{chains}{Number of chains. See details.}
}

\details{
  The code is run in parallel for linux SO. If you are using Windows, the execution of the code will be serially. 
  }

\author{
    Cristian Tiago Erazo Mendes (\email{tiagoerazo@gmail.com})\cr
    Carlos Pereira da Silva (\email{ccpsilva81@hotmail.com})\cr
    Julio Silvio de Sousa Bueno Filho (\email{jssbueno@ufla.br})\cr
    Fabio Mathias Correa (\email{f.correa@ru.ac.za})
}


\examples{

library(ammiBayes)
data(ammiData)

Env  <- factor(ammiData$amb)
Rep <- factor(ammiData$rep)
Gen  <- factor(ammiData$gen)
Y  <- ammiData$prod

model <- ammiBayes(Y=Y, Gen=Gen, Env=Env, Rep=Rep, iter=10, 
									 burn=1, jump=2, chains=2)

summary(model)
}
\keyword{package}

