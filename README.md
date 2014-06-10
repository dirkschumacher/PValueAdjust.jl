[![Build Status](https://travis-ci.org/dirkschumacher/PValueAdjust.jl.svg?branch=master)](https://travis-ci.org/dirkschumacher/PValueAdjust.jl)
[![Coverage Status](https://img.shields.io/coveralls/dirkschumacher/PValueAdjust.jl.svg)](https://coveralls.io/r/dirkschumacher/PValueAdjust.jl)
# PValueAdjust.jl
Some methods to adjust p-values for multiple comparisons in Julia. All methods take a vector of p-values and return a vector with adjusted values. Please refer to the [documentation](http://stat.ethz.ch/R-manual/R-patched/library/stats/html/p.adjust.html) of the corresponding function in R or to Wikipedia ([FWER](http://en.wikipedia.org/wiki/Familywise_error_rate), [FDR](http://en.wikipedia.org/wiki/False_discovery_rate)), if you want to know more on this topic.

All methods are tested against the R function [`p.adjust`](http://stat.ethz.ch/R-manual/R-patched/library/stats/html/p.adjust.html).

Current stable version is 0.2.0.


## Methods
### Control the familywise error rate ([FWER](http://en.wikipedia.org/wiki/Familywise_error_rate))
#### Bonferroni
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > bonferroni(pValues)
4-element Array{Float64,1}:
 0.2 
 0.12
 0.04
 1.0
```

#### Hochberg
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > hochberg(pValues)
4-element Array{Float64,1}:
 0.1 
 0.09
 0.04
 0.5
```

#### Holm
Also known as the Holm–Bonferroni method.
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > holm(pValues)
4-element Array{Float64,1}:
 0.1 
 0.09
 0.04
 0.5
```

#### Hommel
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > hommel(pValues)
4-element Array{Float64,1}:
 0.1  
 0.075
 0.04 
 0.5
```

### Control the false discovery rate ([FDR](http://en.wikipedia.org/wiki/False_discovery_rate))
#### Benjamini-Hochberg
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > benjaminiHochberg(pValues)
4-element Array{Float64,1}:
 0.0666667
 0.06     
 0.04     
 0.5
```
#### Benjamini-Hochberg-Yekutieli
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > benjaminiYekutieli(pValues)
4-element Array{Float64,1}:
 0.138889 
 0.125    
 0.0833333
 1.0
```

## Versioning
This package uses [Semantic Versioning 2.0](http://semver.org/).

## References
Benjamini, Y., and Hochberg, Y. (1995). Controlling the false discovery rate: a practical and powerful approach to multiple testing. Journal of the Royal Statistical Society Series B 57, 289–300.

Benjamini, Y., and Yekutieli, D. (2001). The control of the false discovery rate in multiple testing under dependency. Annals of Statistics 29, 1165–1188. 

Hochberg, Y. (1988). A sharper Bonferroni procedure for multiple tests of significance. Biometrika 75, 800–803. 

Holm, S. (1979). A simple sequentially rejective multiple test procedure. Scandinavian Journal of Statistics 6, 65–70. 

Hommel, G. (1988). A stagewise rejective multiple test procedure based on a modified Bonferroni test. Biometrika 75, 383–386.

Wright, S. P. (1992). Adjusted p-values for simultaneous inference. Biometrics, 48, 1005-1005.
