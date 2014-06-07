using Base.Test
using PValueAdjust

newPvalues = benjaminiHochberg([0.05, 0.03, 0.01, 0.5])
@test_approx_eq newPValues [0.0666, 0.06, 0.04, 0.5]

@test all(benjaminiHochberg([1,1,1]) .<= 1)

@test_throws benjaminiHochberg([-1])
@test_throws benjaminiHochberg([2])

@test benjaminiHochberg([0.5]) == [0.5]
