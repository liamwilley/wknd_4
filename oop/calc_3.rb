# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
puts "TESTING calc..."
puts

whiz = WhizBangCalculator.new
result = whiz.add(1,2)

if result == 3
  puts "PASS!"
else
  puts "F"
end

result = whiz.subtract(2,1)
puts "Your method returned:"
puts result
puts

if result == 1
  puts "PASS!"
else
  puts "F"
end

result = whiz.multiply(2,3)

puts "Your method returned:"
puts result
puts

if result == 6
  puts "PASS!"
else
  puts "F"
end

result = whiz.divide(6,3)

puts "Your method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end

result = whiz.square_root(9)

puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end

result = whiz.hypotenuse(3,4)

puts "Your method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end


