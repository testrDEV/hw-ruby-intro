# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
sum_elements = 0
  endResult = 0
  if arr.length > 0 then
    arr.each do |item|
      sum_elements += item
    end
    endResult = sum_elements
  end
  return endResult
end

def max_2_sum(arr)
  p=0
  if arr.length > 0 then
    p=arr.max(2).reduce(:+)
    return p
  end
  return p
end



def sum_to_n? arr, n
 return false if arr.empty? && n.zero?
  arr.combination(2).any? {|x, y| x + y == n }
end

# Part 2

def hello(name)
 
  "Hello, " + name 

end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) != nil
    return true
  else
    return false
  end
end


def binary_multiple_of_4? s
  
  return false if s.empty? 
 
  if /^(0|(10|111*0)(10|111*0)*0)*$/.match(s) != nil  
    return true
  
  else
    return false
  end 
  
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  # initialize method 
  def initialize(isbn, price) 
   # variables 
    @isbn = isbn 
    @price = price 
    if isbn.empty? || price<= 0
      raise ArgumentError
    end
  end
  
  def price_as_string
    "$%0.2f" % @price
  end 
end
