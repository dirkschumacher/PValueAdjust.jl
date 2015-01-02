using Base.Test
using PValueAdjust

# is there a mocking package?
pValues = [1, 0.5, 0.1, 0.001, 0.0001, 0.002]
@test_approx_eq padjust(pValues) pValues
@test_throws DomainError padjust([10])