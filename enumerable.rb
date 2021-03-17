def my_each(array)
  i = 0
  while (i - array.length).negative?
    yield(array[i])
    i += 1
  end
end

def my_each_with_index(array)
  array.length.times do |i|
    yield(array[i], i)
  end
end

array = %w[sharon leo leila brian arun]
array2 = [2, 3, 3]
my_each_with_index(array) { |friend, i| puts "My friend is: #{friend} with an index: #{i}" }
