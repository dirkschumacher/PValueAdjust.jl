using Base.Test
using PValueAdjust

newPvalues = holm([0.05, 0.03, 0.01, 0.5])
@test_approx_eq newPvalues [0.1, 0.09, 0.04, 0.5]

@test all(holm([1,1,1]) .<= 1)

@test_throws DomainError holm([-1])
@test_throws DomainError holm([2])

@test holm([0.5]) == [0.5]
