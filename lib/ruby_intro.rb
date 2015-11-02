# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  array_sum = 0
  array.each { |x| array_sum += x }
  return array_sum
end

def max_2_sum(array)
  # YOUR CODE HERE
  sum = 0
  sorted_array = array.sort()
  if array.length > 1
    sum = sorted_array[-1] + sorted_array[-2]
  elsif array.length == 1
    sum = sorted_array[-1]
  end
  return sum
end

def sum_to_n?( array, n)
  # YOUR CODE HERE
  for i in 0..array.length
    for j in i+1..array.length-1
      if array[i] + array[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonants = "bcdfghjklmnpqrstvwxyz"
  if s =~ /^[#{Regexp.quote(consonants)}]+/i
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[10]*?(100|0)$/ 
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(value)
    if value.is_a?(String) and value.length > 0
      @isbn = value
    else
      raise ArgumentError
    end
  end
    
  def price=(value)
    if value.is_a?(Numeric) and value > 0.0
      @price = value
    else
      raise ArgumentError
    end
  end
  
  def price_as_string
    return "$%0.2f" % @price
  end
  
end
