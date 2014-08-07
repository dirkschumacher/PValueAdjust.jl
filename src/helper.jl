macro checkPValues(pValues)
    :(if any(($pValues .< 0.0) | ($pValues .> 1.0))
      throw(DomainError())
    end)
end

function order(vector)
  indexes = [1:length(vector)]
  sortedIndexes = sort(indexes, by = (i) -> vector[i])
  sortedIndexes
end