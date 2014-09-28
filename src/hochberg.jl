function hochberg(pValues)
  @checkPValues pValues
  n = length(pValues)
  if n <= 1
    return pValues
  end
  sortedIndexes = order(pValues)
  originalOrder = order(sortedIndexes)
  sortedPValues = pValues[sortedIndexes]
  @step_up_adjustment (1 + i) sortedPValues
  min(1, sortedPValues[originalOrder])
end