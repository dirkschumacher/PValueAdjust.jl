[![Build Status](https://travis-ci.org/dirkschumacher/PValueAdjust.jl.svg?branch=master)](https://travis-ci.org/dirkschumacher/PValueAdjust.jl)
[![Coverage Status](https://img.shields.io/coveralls/dirkschumacher/PValueAdjust.jl.svg)](https://coveralls.io/r/dirkschumacher/PValueAdjust.jl)
[![PValueAdjust](http://pkg.julialang.org/badges/PValueAdjust_0.2.svg)](http://pkg.julialang.org/?pkg=PValueAdjust&ver=0.2)
# PValueAdjust.jl
Some methods to adjust p-values for multiple comparisons in Julia.
The various methods can be called using the function `padjust`. 
`padjust` takes an array of p-values and a second method parameter and returns an array of adjusted p-values.
`padjust` also accepts the method `:none`. This is also the default method, if no method parameter is set.
Please refer to the [documentation](http://stat.ethz.ch/R-manual/R-patched/library/stats/html/p.adjust.html) of the corresponding function in R or to Wikipedia ([FWER](http://en.wikipedia.org/wiki/Familywise_error_rate), [FDR](http://en.wikipedia.org/wiki/False_discovery_rate)), if you want to know more on this topic.

All methods are tested against the R function [`p.adjust`](http://stat.ethz.ch/R-manual/R-patched/library/stats/html/p.adjust.html).

Current stable version is [2.0.0](https://github.com/dirkschumacher/PValueAdjust.jl/tree/v2.0.0).

## Install
```jl
# get the latest stable version
Pkg.add("PValueAdjust")

# get the latest development version
Pkg.clone("git://github.com/dirkschumacher/PValueAdjust.jl.git")
```

## Methods 
### Control the familywise error rate ([FWER](http://en.wikipedia.org/wiki/Familywise_error_rate))
#### Bonferroni
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > padjust(pValues, method = :bonferroni)
4-element Array{Float64,1}:
 0.2 
 0.12
 0.04
 1.0
```

#### Hochberg
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > padjust(pValues, method = :hochberg)
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
julia > padjust(pValues, method = :holm)
4-element Array{Float64,1}:
 0.1 
 0.09
 0.04
 0.5
```

### Control the false discovery rate ([FDR](http://en.wikipedia.org/wiki/False_discovery_rate))
#### Benjamini-Hochberg
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > padjust(pValues, method = :benjaminiHochberg)
4-element Array{Float64,1}:
 0.0666667
 0.06     
 0.04     
 0.5
```
#### Benjamini-Hochberg-Yekutieli
```jl
julia > pValues = [0.05, 0.03, 0.01, 0.5]
julia > padjust(pValues, method = :benjaminiYekutieli)
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
