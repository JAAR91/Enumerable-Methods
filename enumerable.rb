module Enumerable
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

  def my_all?(array)   
    output = true 
    array.my_each(array){|item| output = false if !yield(item)}      
    output  
  end

  def my_any?(array)
    output = false
    array.my_each(array){|item| output = true if yield(item)}
    output
  end
end

array = %w[sharon leo leila brian aaron]
puts array.my_any?(array) {|item| item == 'jose' }
