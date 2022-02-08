\name{ammiBayes.conf.plot}
\alias{ammiBayes.conf.plot}

\title{
  Plot ammiBayes object with confidence region
}

\description{
  Plot the confidence regions for genotype and environment effects
}

\usage{
ammiBayes.conf.plot(model, conf=0.95, pars.gen=NULL, pars.env=NULL,
              gen.labels=NULL, env.labels=NULL,
              col.env="red", col.gen="green", 
              alpha.env=80, alpha.gen=80, 
              col.text.env="black", col.text.gen="black",
              border.gen="transparent", border.env="transparent", 
              cex.env=1, cex.gen=1, lty.gen=1, lty.env=1, 
              lwd.gen=1, lwd.env=1, xlab, ylab, col.grid="grey", 
              lty.grid=2, lwd.grid=1, change.signal=FALSE, 
              plot.gen=TRUE, plot.env=TRUE)

}

\arguments{
  \item{model}{An object of the ammiBayes class}
  \item{conf}{Significant level for the confidence region. By default is 0.95.}  
  \item{pars.gen}{An optional character vector of genotype names. If pars is omitted all genotypes are included.}
  \item{pars.env}{An optional character vector of environment names. If pars is omitted all environments are included.}
  \item{gen.labels}{Optional vector for the name of the genotypes.}
  \item{env.labels}{Optional vector for the name of the environments.}
  \item{col.env}{Color for the confidence region of the environment. Default is "red".}
  \item{col.gen}{Color for the confidence region of the genotype. Default is "green".}
  \item{alpha.env}{Specifies the opacity of the confidence region for the environment. Default is 80.}
  \item{alpha.gen}{Specifies the opacity of the confidence region for the genotype. Default is 80.}      
  \item{col.text.env}{Define the color of environment names.}  
  \item{col.text.gen}{Define the color of genotype names.}  
  \item{border.gen}{Define the color for the border of the confidence region of genotype. Default is "transparent".}  
  \item{border.env}{Define the color for the border of the confidence region of environment. Default is "transparent".}  
  \item{cex.env}{Scale for the font size of the environment names. Default is 1}    
  \item{cex.gen}{Scale for the font size of the genotype names. Default is 1}    
  \item{lty.gen}{Line type for the border of confidence region of genotype. Default is 1}
  \item{lty.env}{Line type for the border of confidence region of environment. Default is 1}
  \item{lwd.gen}{Line width for the border of confidence region of genotype. Default is 1}
  \item{lwd.env}{Line width for the border of confidence region of environment. Default is 1}
  \item{xlab}{Label for the x-axis}    
  \item{ylab}{Label for the y-axis}    
  \item{col.grid}{Define the color for the grid. Default is "grey"}    
  \item{lty.grid}{Line type of grid. Default is 2}
  \item{lwd.grid}{Line width of grid. Default is 1}   
  \item{change.signal}{Changes the signal of the chain for better visualization of the sample. By default is FALSE}
  \item{plot.gen}{Plot effects of genotypes. By default is TRUE}
  \item{plot.env}{PLot effects of environment. By default is TRUE}     
}

\details{
    The confidence regions are defined using the package \code{\link[distfree.cr]{distfree.cr}}.
}


\author{
    Cristian Tiago Erazo Mendes (\email{tiagoerazo@gmail.com})\cr
    Carlos Pereira da Silva (\email{ccpsilva81@hotmail.com})\cr
    Julio Silvio de Sousa Bueno Filho (\email{jssbueno@ufla.br})\cr
    Fabio Mathias Correa (\email{f.correa@ru.ac.za})
}

\seealso{
  \code{\link{lattice}}
}

\examples{
library(ammiBayes)
data(ammiData)

Env  <- factor(ammiData$amb)
Rep <- factor(ammiData$rep)
Gen  <- factor(ammiData$gen)
Y  <- ammiData$prod

model <- ammiBayes(Y=Y, Gen=Gen, Env=Env, Rep=Rep, iter=10, burn=1, jump=2, chains=2)

ammiBayes.conf.plot(model)
}
\keyword{package}

