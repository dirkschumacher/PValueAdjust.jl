using Base.Test
using PValueAdjust

newPvalues = padjust([0.05, 0.03, 0.01, 0.5], Holm)
@test_approx_eq newPvalues [0.1, 0.09, 0.04, 0.5]

@test_approx_eq padjust([1, 0.5, 0.1, 0.001, 0.0001, 0.002], Holm) [1e+00, 1e+00, 3e-01, 5e-03, 6e-04, 8e-03]
@test_approx_eq padjust([0.05, 0.05, 0.05], Holm) [0.15, 0.15, 0.15]

@test all(padjust([1,1,1], Holm) .<= 1)

@test_throws DomainError padjust([-1], Holm)
@test_throws DomainError padjust([2], Holm)

@test padjust([0.5], Holm) == [0.5]
