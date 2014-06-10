# taken from Wright, S. P. (1992). Adjusted p-values for simultaneous inference. Biometrics, 48, 1005-1005.
function hommel(pValues)
  if any((pValues .< 0.0) | (pValues .> 1.0))
    throw(DomainError())
  end
  n = length(pValues)
  if n <= 1
    return pValues
  end
  sortedIndexes = order(pValues)
  originalOrder = order(sortedIndexes)
  sortedPValues = pValues[sortedIndexes]
  adjustedPValues = copy(sortedPValues)
  for i in 0:(n - 2)
    m = n - i
    cmin = 100000
    for j in (n - m + 1):n
      cmin = min(cmin, m * sortedPValues[j] / (m + j - n))
    end
    for j in (n - m + 1):n
      if adjustedPValues[j] < cmin
        adjustedPValues[j] = cmin
      end
    end
    for j in 1:(n - m)
      cj = min(cmin, m * sortedPValues[j])
      if adjustedPValues[j] < cj
        adjustedPValues[j] = cj
      end
    end
  end
  min(1, adjustedPValues[originalOrder])
end