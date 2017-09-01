# partner: tinh.t.nguyen@berkeley.edu
# partner: yuchu.ma@berkeley.edu
# When done, submit this entire file to the autograder.

# Part 1

#Define a method sum(array) that takes an array of integers as an argument 
#and returns the sum of its elements. 
#For an empty array it should return zero.
def sum arr
  arr.inject(0){|a,b| a + b}
end

#Define a method max_2_sum(array) which takes an array of integers 
#as an argument and returns the sum of its two largest elements. 
#For an empty array it should return zero. For an array with just 
#one element, it should return that element.
def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  arr.max(2).reduce(:+)
end

#Define a method sum_to_n?(array, n) that takes an array of integers 
#and an additional integer, n, as arguments and returns true if any 
#two elements in the array of integers sum to n. sum_to_n?([], n) should 
#return false for any value of n, by definition. 
def sum_to_n? arr, n
  return false if arr.length < 2
  arr.permutation(2).to_a.each do |x|
    return true if x.reduce(:+) == n
  end
  false
end

# Part 2

#Define a method hello(name) that takes a string representing a name 
#and returns the string "Hello, " concatenated with the name. 
def hello(name)
  return %Q{Hello, #{name}}
end

#Define a method starts_with_consonant?(s) that takes a string and 
#returns true if it starts with a consonant and false otherwise.
def starts_with_consonant? s
  if s =~ /^[b-df-hj-nq-tv-z]/i
    return true
  else
    return false
  end
end

#Define a method binary_multiple_of_4?(s) that takes a string and 
#returns true if the string represents a binary number 
#that is a multiple of 4.
def binary_multiple_of_4? s
  if s == "0"
    return true
  elsif s =~ /^[10]*00$/
    return true
  else
    return false
  end
end

# Part 3

#Define a class BookInStock which represents a book with an ISBN number, isbn, 
#and price of the book as a floating-point number, price, as attributes. 
class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    if price <= 0 || isbn.empty?  
      raise ArgumentError.new("Invalid inputs") 
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    # return the price in string format
    return '$' + ('%.2f' % @price)
  end
end
