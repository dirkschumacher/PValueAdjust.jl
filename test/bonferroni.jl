using Base.Test
using PValueAdjust

pvalues = [0.05, 0.05, 0.05]
newPvalues = padjust(pvalues, method = :bonferroni)
@test_approx_eq newPvalues pvalues * 3.0

@test all(padjust([1,1,1], method = :bonferroni) .<= 1)

@test_throws padjust([-1], method = :bonferroni)
@test_throws padjust([2], method = :bonferroni)
