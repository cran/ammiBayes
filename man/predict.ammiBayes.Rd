\name{predict.ammiBayes}
\alias{predict.ammiBayes}

\title{
  Bayesian AMMI for ordinal data
}

\description{
    Extract predict values and HPD interval
}

\usage{
\method{predict}{ammiBayes}(object, prob=0.95, ...)
}

\arguments{
  \item{object}{An object of class ammiBayes}
  \item{prob}{Probability for HPD interval. Default is 0.95}
  \item{\dots}{Potential further arguments (required by generic).}  
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

predict(model)
}
\keyword{package}

