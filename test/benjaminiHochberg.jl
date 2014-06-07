using Base.Test
using PValueAdjust

newPvalues = benjaminiHochberg([0.05, 0.03, 0.01, 0.5])
@test_approx_eq newPvalues [0.06666666667, 0.06, 0.04, 0.5]

@test all(benjaminiHochberg([1,1,1]) .<= 1)

@test_throws DomainError benjaminiHochberg([-1])
@test_throws DomainError benjaminiHochberg([2])

@test benjaminiHochberg([0.5]) == [0.5]
