using Base.Test
using PValueAdjust

pvalues = [0.05, 0.05, 0.05]
newPvalues = padjust(pvalues, Bonferroni)
@test_approx_eq newPvalues pvalues * 3.0

@test all(padjust([1,1,1], Bonferroni) .<= 1)

@test_throws DomainError padjust([-1], Bonferroni)
@test_throws DomainError padjust([2], Bonferroni)
