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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
