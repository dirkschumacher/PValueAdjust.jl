using Base.Test
using PValueAdjust

newPvalues = hochberg([0.05, 0.03, 0.01, 0.5])
@test_approx_eq newPvalues [0.1, 0.09, 0.04, 0.5]

@test_approx_eq hochberg([1, 0.5, 0.1, 0.001, 0.0001, 0.002]) [1e+00, 1e+00, 3e-01, 5e-03, 6e-04, 8e-03]
@test_approx_eq hochberg([0.05, 0.05, 0.05]) [0.05, 0.05, 0.05]

@test all(hochberg([1,1,1]) .<= 1)

@test_throws hochberg([-1])
@test_throws hochberg([2])

@test hochberg([0.5]) == [0.5]
