using Base.Test
using PValueAdjust

pvalues = [0.05, 0.05, 0.05]
newPvalues = bonferroni(pvalues)
@test_approx_eq newPvalues pvalues * 3.0

@test all(bonferroni([1,1,1]) .<= 1)

@test_throws DomainError bonferroni([-1])
@test_throws DomainError bonferroni([2])
