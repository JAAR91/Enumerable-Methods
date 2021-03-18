module Enumerable
  def my_each()
    i = 0
    while (i - self.length).negative?
      yield(self[i])
      i += 1
    end
  end

  def my_each_with_index()
    self.length.times do |i|
      yield(self[i], i)
    end
  end

  def my_select()
    newarray = []
    array.each do |item|
      newarray.push(item) if yield(item)
    end
    newarray
  end

  def my_all?()   
    output = true 
    self.my_each{|item| output = false if !yield(item)}      
    output  
  end

  def my_any?()
    output = false
    self.my_each{|item| output = true if yield(item)}
    output
  end

  def my_none?()
    output = true
    self.my_each{|item| output = false if yield(item)}
    output
  end 

  def my_count()
    count = 0
    self.my_each{|item| count += 1 if yield(item)}
    count
  end

  def my_map()
    newarray = []
    self.my_each{|item| newarray.push(yield(item))}
    newarray
  end

  def my_inject()
    result=self[0]
    self.my_each{|item| result=yield(result,item)}
    result
  end
end

array = [1, 2, 3]
p array.my_inject { |product, n| product * n}
