def pair_sum(array, sum)
  result = []
  i = 0 
  while i < array.length
    j = i + 1 
    while j < array.length
      if array[i] + array[j] == sum && j > i 
        result << [i, j]
      end 
      j += 1 
    end 
    i += 1 
  end 
  result 
end 
