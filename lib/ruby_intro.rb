# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  arr.combination(2).each {|c| return true if (c[0] + c[1] == n)}
  false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  else
    s=s.downcase
    if /^[^aeiou\W]/ =~ s[0]
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  if (s =~ /^[0-1]+$/) && (s.to_i % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    @isbn=isbn
    @price=price

    if @isbn.empty? || @price <= 0 
      raise ArgumentError
    end
  end
	
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$#{'%.2f' %  @price}"
  end
end
