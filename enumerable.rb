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

def my_select(array)
  newarray = []
  array.each do |item|
    newarray.push(item) if yield(item)
  end
  newarray
end

array = %w[sharon leo leila brian aaron]
array2 = [2, 3, 3]
puts my_select(array) { |friend| friend.length > 3 }
