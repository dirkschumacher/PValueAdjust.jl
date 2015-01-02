padjust(pValues::AbstractArray, method::BonferroniMethod) = bonferroni(pValues)
padjust(pValues::AbstractArray, method::BenjaminiHochbergMethod) = benjaminiHochberg(pValues)
padjust(pValues::AbstractArray, method::BenjaminiYekutieliMethod) = benjaminiYekutieli(pValues)
padjust(pValues::AbstractArray, method::HochbergMethod) = hochberg(pValues)
padjust(pValues::AbstractArray, method::HolmMethod) = holm(pValues)

function padjust(pValues::AbstractArray) 
  @check_pValues pValues 
  pValues
end
