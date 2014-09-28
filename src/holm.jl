function holm(pValues)
  @check_pValues pValues
  n = length(pValues)
  if n <= 1
    return pValues
  end
  sortedIndexes = order(pValues)
  originalOrder = order(sortedIndexes)
  sortedPValues = pValues[sortedIndexes]
  @step_down_adjustment (n + 1 - i) sortedPValues
  min(1, sortedPValues[originalOrder])
end