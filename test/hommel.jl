using Base.Test
using PValueAdjust

newPvalues = hommel([0.05, 0.03, 0.01, 0.5])
@test_approx_eq newPvalues [0.1, 0.075, 0.04, 0.5]

@test_approx_eq hommel([1, 0.5, 0.1, 0.001, 0.0001, 0.002]) [1e+00, 1e+00, 3e-01, 5e-03, 6e-04, 8e-03]
@test_approx_eq hommel([0.05, 0.05, 0.05]) [0.05, 0.05, 0.05]

pvalues = [0.9954279, 0.9374397, 0.4426119, 0.7564215, 0.1466431, 0.8993471, 0.9507175, 0.1275631, 0.2441196, 0.3745604]
@test_approx_eq hommel(pvalues) [0.9954279, 0.9954279, 0.9954279, 0.9954279, 0.9954279, 0.9954279, 0.9954279, 0.9954279, 0.9954279, 0.9954279]

pvalues = [0.05, 0.003, 0.51, 0.0001, 0.01, 0.0, 0.008]
@test_approx_eq hommel(pvalues) [0.1, 0.015, 0.51, 0.0006, 0.03, 0, 0.024]
@test all(hommel([1,1,1]) .<= 1)

@test_throws hommel([-1])
@test_throws hommel([2])

@test hommel([0.5]) == [0.5]
