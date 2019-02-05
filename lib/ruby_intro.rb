# When done, submit this entire file to the autograder.


# Part 1

def sum arr
sum = 0
arr.each do |i|
  sum =sum+ i
end
return sum
end

def max_2_sum arr
sum = 0 if arr.length ==0
sum = arr[0] if arr.length ==1
if arr.length >1
  a=arr.sort.reverse[0]
  b=arr.sort.reverse[1]
  sum=a+b
end
return sum
end


def sum_to_n?(arr, n)
 
  for i in 0..arr.length - 1
      k = i + 1
      for k in k..arr.length - 1
        sum = arr[i] + arr[k]
        if sum == n
        result = 1
        end
      end
  end

if result==1
  return true
else
  return false
end
end

# Part 2

def hello(name)
 
 "Hello, " + name


end

def starts_with_consonant? s
  if /^[bcdhjklmnpqrstvwxyz]/i.match(s) != nil
result= true
else
result= false
  end
return result


end

def binary_multiple_of_4? s
  if (/\A(([10]*00)|(0{1}))\z/).match(s)!= nil
    return true
  else
    return false
  end
end

# Part 3-
class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
   raise ArgumentError if isbn.empty? || price <= 0 
   
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
