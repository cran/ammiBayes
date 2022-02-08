\name{ammiBayes.gen.plot}
\alias{ammiBayes.gen.plot}

\title{
  Plot genotype effects from ammiBayes object
}

\description{
  Plot the posterior mean for an ammiBayes object
}

\usage{
ammiBayes.gen.plot(x, lwd=1, lty=1, pch=18, method="bars",
                  col.bands=NULL, ylim=NULL,
                  xlab=NULL, ylab=NULL, gen.names=NULL)
}

\arguments{
  \item{x}{An object from gen.effects function.}
  \item{lwd}{A line width, a positive number, default is 1.}
  \item{lty}{The line type. Default is 1.}
  \item{pch}{Either an integer specifying a symbol or a single character to be used as the default in plotting points.}
  \item{method}{Defaults to \code{"bars"} to draw error-bar type plots. See \code{\link[Hmisc]{panel.xYplot}}.}
  \item{col.bands}{Define the color of genotype bands.See \code{\link[Hmisc]{xYplot}}.}  
  \item{ylim}{A numeric vector of length 2 giving minimum and maximum for the y-axis.}  
  \item{xlab}{Label for the x-axis.}    
  \item{ylab}{Label for the y-axis.}    
  \item{gen.names}{Define the names of genotypes on the x-axis. By default are the levels of the Genotypes.}        
}


\author{
    Cristian Tiago Erazo Mendes (\email{tiagoerazo@gmail.com})\cr
    Carlos Pereira da Silva (\email{ccpsilva81@hotmail.com})\cr
    Julio Silvio de Sousa Bueno Filho (\email{jssbueno@ufla.br})\cr
    Fabio Mathias Correa (\email{f.correa@ru.ac.za})
}

\seealso{
  \code{\link[Hmisc]{xYplot}}
}

\examples{

library(ammiBayes)
data(ammiData)


Env  <- factor(ammiData$amb)
Rep <- factor(ammiData$rep)
Gen  <- factor(ammiData$gen)
Y  <- ammiData$prod

model <- ammiBayes(Y=Y, Gen=Gen, Env=Env, Rep=Rep, iter=10, burn=1, jump=2, chains=2)

genot.effects <- gen.effects(model)


ammiBayes.gen.plot(genot.effects)
}
\keyword{package}

