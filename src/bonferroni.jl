function bonferroni(pValues)
  @check_pValues pValues
  min(1, pValues * length(pValues))
end