def my_each(array)
  i = 0
  while (i - array.length).negative?
    yield(array[i])
    i += 1
  end
end  

array = %w[sharon leo leila brian arun]
array2 = [2,3,3]
puts my_each(array){ |friend| puts "Hello, " + friend }