function order(vector)
  indexes = [1:length(vector)]
  sortedIndexes = sort(indexes, by = (i) -> vector[i])
  sortedIndexes
end