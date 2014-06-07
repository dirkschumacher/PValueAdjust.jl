using Base.Test
using PValueAdjust

pvalues = [0.05, 0.05, 0.05]
newPvalues = bonferroni(pvalues)
@test_approx_eq newPvalues pValues * 3.0

@test all(bonferroni([1,1,1]) .<= 1)

@test_throws bonferroni([-1])
@test_throws bonferroni([2])
