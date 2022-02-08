\name{gen.effects}
\alias{gen.effects}

\title{
  Bayesian AMMI for ordinal data
}

\description{
    Extract the effects of genotypes and HPD interval
}

\usage{
gen.effects(x, prob=0.95)
}

\arguments{
  \item{x}{An object of class ammiBayes}
  \item{prob}{Probability for HPD interval. Default is 0.95}
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

model <- ammiBayes(Y=Y, Gen=Gen, Env=Env, Rep=Rep, iter=10, burn=1, jump=2, chains=2)

gen.effects(model)
}
\keyword{package}

