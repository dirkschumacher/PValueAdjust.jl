function bonferroni(pValues)
  @checkPValues pValues
  min(1, pValues * length(pValues))
end