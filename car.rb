class Car
  def initialize (make, age,topSpeed, driver, gasTankSize)
    @make = make
    @age = age
    @topSpeed = topSpeed
    @driver = driver
    @gasTankSize = gasTankSize
  end
  attr_accessor :make, :age, :topSpeed, :driver,  :gasTankSize
end

#puts "Hello! Welcome to car.com"
#puts "Please enter your name: "
#name = gets.chomp
#puts "And What car to you drive?"
#car=  gets.chomp
#puts "How old are you?"
#age = gets.chomp
#puts = "Your contact details?"
#contact = gets.chomp

#puts "Hello #{name}, I see you drive a #{ford} and you are #{age} with phone number #{contact}."

#puts "what is the car model?"
#userName = gets.chomp
#puts "how old is the car?"
#userEmail = gets.chomp
#puts "what is your topspeed?"
#userAddress = gets.chomp
#puts "what is the tank size?"
#userContact = gets.chomp
class Driver
  def initialize (name, car, age, contact)
    @name = name
    @car = car
    @age = age
    @contact = contact
  end
  attr_accessor :name, :car, :age, :contact
end


car = Car.new("name", "3","100", Driver.new("Ben", "Holden", "43","9999999"), "30")

puts car.gasTankSize
