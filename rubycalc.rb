def add(a,b)
a + b
end

def subtract(a,b)
a - b
end

def multiply(a,b)
a * b
end

def divide(a,b)
  if b != 0
  a/b

end

end

puts "Welcome to RubyCalc"
print "Enter first number: "
a = gets.chomp
a= a .to_i
print "Enter operation (+, -, *, /): "
operation = gets.chomp
print "Enter second number: "
b = gets.chomp
b = b .to_i
if operation == "+"
  result= a + b
elsif operation == "-"
result=  subtract(a, b)
elsif operation == "*"
result=  multiply(a, b)
elsif operation == "/"
result=  divide(a, b)
end

if b = 0 && operation == "/"
  puts "you are an idiot!"
else
puts "The result is: #{result}"
end
