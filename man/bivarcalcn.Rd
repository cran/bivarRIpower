\name{bivarcalcn}
\alias{bivarcalcn}
\title{
Function to calculate necessary sample size to achieve given power for correlation parameters in bivariate linear regression model}
\description{
Function carries out maximum likelihood sample size calculations for one of four types of correlations in a bivariate random-intercept (RI)  
linear regression model discussed in Comulada and Weiss (2010): 1) Correlations between RI; 2) residuals, 3) observations measured at the same 
time point (concurrent); and 4) observations measured at different time points (lagged).  Standard deviations for variance parameters and 
correlations between RI and residuals are specified by the user.  Correlations between concurrent and lagged observations are calculated.     
Sample size is calculated for specified correlation and power under a two-sided test with a .05 alpha level.  Powers for remaining three
non-specified correlations are also shown.  
}
\usage{
bivarcalcn(power, powerfor, timepts, d1, d2, p, p1, s1, s2, r, r1)}
\arguments{
  \item{power}{
Power to achieve (usually at least .80)
}
  \item{powerfor}{
Correlation to base sample size calculation on.  Possible entries are 'RI', Random intercepts;
		'RESIDUAL', Residuals; 'YYcon', Concurrent outcome observations; or 'YYlag', Lagged outcome observations.}
  \item{timepts}{
Number of time points}
  \item{d1}{
Standard deviation (SD) for 1st random intercept
}
  \item{d2}{
SD for 2nd random intercept
}
  \item{p}{
Correlation between RI under null hypothesis
}
  \item{p1}{
Correlation between RI under alternative hypothesis
}
  \item{s1}{
SD for 1st residual
}
  \item{s2}{
SD for 2nd residual
}
  \item{r}{
Correlation between residual under null hypothesis}
  \item{r1}{
Correlation between residual under alternative hypothesis
}

}
\details{
}
\value{
Returns sample size (labled as 'clusters') and parameters specified for calculations
}
\references{
Comulada WS and Weiss RE. (2010). Power calculations for correlations between bivariate longitudinal data. Statistics in Medicine. 29(27): 2811-2824.}
\author{
W. Scott Comulada and Robert E. Weiss
}
\note{

}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# Example: Calculate necessary sample size to achieve 80 percent power at 5 
# percent alpha level for null and alternative hypotheses that correlation 
# between RI is 0 and .2, respectively, across 6 time points.  Other 
# covariance parameter are set as follows: Correlation between residuals = 0;
# Standard deviations: 1st RI = 1, 2nd RI = 2, 1st residual = .5, 
# 2nd residual = .75  
library(bivarRIpower)
bivarcalcn(power=.80,powerfor='RI',timepts=6,d1=1,d2=2,p=0,p1=.2,s1=.5,s2=.75,
r=0,r1=.1)

}

