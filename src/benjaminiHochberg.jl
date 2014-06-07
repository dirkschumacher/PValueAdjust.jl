function benjaminiHochberg(pValues)
  if any((pValues .< 0.0) | (pValues .> 1.0))
    throw(DomainError())
  end
  n = length(pValues)
  if n <= 1
    return pvalues
  end
  indexes = [1:n]
  sortedIndexes = sort(indexes, by = (i) -> pValues[i])
  sortedPValues = pValues[sortedIndexes]
  for i in 1:(n - 1)
    sortedPValues[n - i] = min(sortedPValues[n - i + 1], sortedPValues[n - i] * n / (n - i))
  end
  min(1, sortedPValues[sortedIndexes])
end