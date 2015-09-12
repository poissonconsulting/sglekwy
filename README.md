[![DOI](https://zenodo.org/badge/10250/poissonconsulting/sglekwy.svg)](https://zenodo.org/badge/latestdoi/10250/poissonconsulting/sglekwy)

Sage Grouse Lek Observations for Wyoming

`sglekwy` is an R package of greater sage grouse 
lek observations for the State of Wyoming from 1948 to 2015.
At the request of the State of Wyoming
the geolocations of individual leks and the names of individuals
conducting lek counts are not included although
the official state individual lek identifiers are provided.

## Installation

To install and load `sglekwy` from the Poisson Consulting archive 
execute the following code at the R terminal:
```
install.packages("drat", dependencies = TRUE)
library(drat)
drat::addRepo("poissonconsulting")
install.packages("sglekwy", dependencies = TRUE)
library(sglekwy)
```

## Information

For more information type `?sglekwy` at the R console after loading the package with `library(sglekwy)`.
