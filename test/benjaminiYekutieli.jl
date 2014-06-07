using Base.Test
using PValueAdjust

newPvalues = benjaminiYekutieli([0.05, 0.03, 0.01, 0.5])
@test_approx_eq newPvalues [0.13888888888889, 0.125, 0.083333333333, 1]

@test all(benjaminiYekutieli([1.0 ,1.0, 1.0]) .<= 1.0)

@test_throws DomainError benjaminiYekutieli([-1])
@test_throws DomainError benjaminiYekutieli([2])

@test benjaminiYekutieli([0.5]) == [0.5]
