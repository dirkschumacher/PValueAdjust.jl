function padjust(pValues::AbstractArray, method::Symbol)
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
  end
  throw(ArgumentError())
end