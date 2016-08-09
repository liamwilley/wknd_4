# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculate

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

class SimpleCalculator 
  include Calculate
end


class FancyCalculator

  include Calculate

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
puts "TESTING calc..."
puts

result = simple.add(1,2)

puts "Your method returned:"
puts result
puts

simple = SimpleCalculator.new
fancy = FancyCalculator.new

result = simple.add(1,2)

if result == 3
  puts "PASS!"
else
  puts "F"
end

result = fancy.square_root(9)
puts "Your method returned:"
puts result
puts

if result == 3
  puts "PASS!"
else
  puts "F"
end


