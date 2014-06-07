[![Build Status](https://travis-ci.org/dirkschumacher/PValueAdjust.jl.svg?branch=master)](https://travis-ci.org/dirkschumacher/PValueAdjust.jl)
# PValueAdjust.jl
Some methods to adjust p-values for multiple comparisons in Julia. All methods take a vector of p-values and return a vector with adjusted values.

## Methods
### Bonferroni
Controls the familywise error rate (FWER).
```jl
bonferroni([0.05, 0.03, 0.01, 0.5])
#4-element Array{Float64,1}:
# 0.2 
# 0.12
# 0.04
# 1.0
```

### Holm
Controls the familywise error rate (FWER). Also known as the Bonferroni-Holm method.
````jl
holm([0.05, 0.03, 0.01, 0.5])
#4-element Array{Float64,1}:
# 0.1 
# 0.09
# 0.04
# 0.5
```

### Benjamini-Hochberg
Controls the false discovery rate (FDR).
```jl
benjaminiHochberg([0.05, 0.03, 0.01, 0.5])
#4-element Array{Float64,1}:
# 0.0666667
# 0.06     
# 0.04     
# 0.5
```


# References
Benjamini, Y., and Hochberg, Y. (1995). Controlling the false discovery rate: a practical and powerful approach to multiple testing. Journal of the Royal Statistical Society Series B 57, 289–300.

Holm, S. (1979). A simple sequentially rejective multiple test procedure. Scandinavian Journal of Statistics 6, 65–70. 