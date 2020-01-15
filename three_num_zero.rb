
def three_num_zero(array)
  result = []
  i = 0
  while i < array.length
    j = i + 1
    while j < array.length
      k = j + 1
      while k < array.length
        if array[i] + array[j] + array[k] == 0
          result << [i, j, k]
        end
        k += 1
      end
      j += 1
    end
    i += 1
  end
  result
end
