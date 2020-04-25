class Array
  def quicksort
    return [] if empty?

    random_index = delete_at(rand(size))
    left_i, right_i = partition(&random_index.method(:>))
    return *left_i.quicksort, random_index, *right_i.quicksort

  end
end

array = [99, 33, 334,565,5,3, 0, 1, 7, 994, 8 , 3, 2, 8888, 3, 32, 123, 54]
p array.quicksort

puts "Hello World"