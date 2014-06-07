function bonferroni(pValues::)
  if any((pValues .< 0.0) | (pValues .> 1.0))
    throw(DomainError())
  end
  min(1, pValues * length(pValues))
end