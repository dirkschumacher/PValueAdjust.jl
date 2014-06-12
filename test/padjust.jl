using Base.Test
using PValueAdjust

# is there a mocking package?
pValues = [1, 0.5, 0.1, 0.001, 0.0001, 0.002]
@test_approx_eq padjust(pValues, :hommel) hommel(pValues)
@test_approx_eq padjust(pValues, :hochberg) hochberg(pValues)
@test_approx_eq padjust(pValues, :bonferroni) bonferroni(pValues)
@test_approx_eq padjust(pValues, :holm) holm(pValues)
@test_approx_eq padjust(pValues, :benjaminiHochberg) benjaminiHochberg(pValues)
@test_approx_eq padjust(pValues, :benjaminiYekutieli) benjaminiYekutieli(pValues)
@test_throws padjust([], :wat)