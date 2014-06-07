function benjaminiYekutieli(pValues)
  if any((pValues .< 0.0) | (pValues .> 1.0))
    throw(DomainError())
  end
  n = length(pValues)
  if n <= 1
    return pValues
  end
  cm = sum([1 / i for i = 1:n])
  indexes = [1:n]
  sortedIndexes = sort(indexes, by = (i) -> pValues[i])
  sortedPValues = pValues[sortedIndexes]
  sortedPValues[n] *= cm
  for i in 1:(n - 1)
    sortedPValues[n - i] = min(sortedPValues[n - i + 1], sortedPValues[n - i] * (n * cm) / (n - i))
  end
  min(1, sortedPValues[sortedIndexes])
end