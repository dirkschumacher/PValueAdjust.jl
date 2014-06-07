function holm(pValues)
  if any((pValues .< 0.0) | (pValues .> 1.0))
    throw(DomainError())
  end
  n = length(pValues)
  if n <= 1
    return pValues
  end
  indexes = [1:n]
  sortedIndexes = sort(indexes, by = (i) -> pValues[i])
  sortedPValues = pValues[sortedIndexes]
  for i in 1:n
    sortedPValues[i] = sortedPValues[i] * (n + 1 - i)
  end
  min(1, sortedPValues[sortedIndexes])
end