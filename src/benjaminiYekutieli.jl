function benjaminiYekutieli(pValues)
  @checkPValues pValues
  n = length(pValues)
  if n <= 1
    return pValues
  end
  cm = sum([1 / i for i = 1:n])
  sortedIndexes = order(pValues)
  originalOrder = order(sortedIndexes)
  sortedPValues = pValues[sortedIndexes]
  @step_up_adjustment (n * cm) / (n - i) sortedPValues
  min(1, sortedPValues[originalOrder])
end