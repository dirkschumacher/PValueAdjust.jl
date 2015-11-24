macro check_pValues(pValues)
    :(if any(($pValues .< 0.0) | ($pValues .> 1.0))
      throw(DomainError())
    end)
end

macro step_up_adjustment(multiplier, sortedPValues)
  # applies the step up adjustment as e.g. described here:
  # http://www.unc.edu/courses/2007spring/biol/145/001/docs/lectures/Nov12.html
  # but a bit more efficiently as the array of pValues is ordered
  :(
    for i in 0:(n - 1)
      if i == 0
        $sortedPValues[n - i] *= $multiplier
      else
        $sortedPValues[n - i] = min($sortedPValues[n - i + 1], $sortedPValues[n - i] * $multiplier)
      end
    end
  )
end

macro step_down_adjustment(multiplier, sortedPValues)
  # applies the step down adjustment as e.g. described here:
  # http://en.wikipedia.org/w/index.php?title=Holm%E2%80%93Bonferroni_method&oldid=615389617#Adjusted_P-value
  # but a bit more efficiently as the array of pValues is ordered
  :(
    for i in 1:n
      if i == 1
        $sortedPValues[i] *= $multiplier
      else
        $sortedPValues[i] = max(sortedPValues[i - 1], sortedPValues[i] * $multiplier)
      end
    end
  )
end

function order(vector)
  indexes = collect(1:length(vector))
  sortedIndexes = sort(indexes, by = (i) -> vector[i])
  sortedIndexes
end
