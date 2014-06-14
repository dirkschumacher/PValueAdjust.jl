function padjust(pValues::AbstractArray; method = :none)
  if method == :hommel
    return hommel(pValues)
  elseif method == :holm
    return holm(pValues)
  elseif method == :hochberg
    return hochberg(pValues)
  elseif method == :bonferroni
    return bonferroni(pValues)
  elseif method == :benjaminiHochberg  
    return benjaminiHochberg(pValues)
  elseif method == :benjaminiYekutieli
    return benjaminiYekutieli(pValues)
  elseif method == :none
    return pValues
  end
  throw(ArgumentError())
end