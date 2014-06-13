using Base.Test
using PValueAdjust

# is there a mocking package?
pValues = [1, 0.5, 0.1, 0.001, 0.0001, 0.002]
@test_approx_eq padjust(pValues, method = :hommel) hommel(pValues)
@test_approx_eq padjust(pValues, method = :hochberg) hochberg(pValues)
@test_approx_eq padjust(pValues, method = :bonferroni) bonferroni(pValues)
@test_approx_eq padjust(pValues, method = :holm) holm(pValues)
@test_approx_eq padjust(pValues, method = :benjaminiHochberg) benjaminiHochberg(pValues)
@test_approx_eq padjust(pValues, method = :benjaminiYekutieli) benjaminiYekutieli(pValues)
@test_approx_eq padjust(pValues, method = :none) pValues
@test_approx_eq padjust(pValues) pValues
@test_throws padjust([], method = :wat)