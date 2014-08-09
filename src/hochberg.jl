function hochberg(pValues)
  @checkPValues pValues
  n = length(pValues)
  if n <= 1
    return pValues
  end
  sortedIndexes = order(pValues)
  originalOrder = order(sortedIndexes)
  sortedPValues = pValues[sortedIndexes]
  for i in 1:(n - 1)
    sortedPValues[n - i] = min(sortedPValues[n - i + 1], sortedPValues[n - i] * (1 + i))
  end
  min(1, sortedPValues[originalOrder])
end