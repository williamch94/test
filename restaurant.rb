require 'Terminal-Table'

class Menu
  def initialize (price, meals)
@price = price
@meals = meals
end
attr_accessor :price; :meals;
end

class Meals
def initialize (food,price,menu)
  @food = food
  @price = ["$2", "$4", "$2.50"]
  @menu = menu

end
attr_accessor :food; :price; :menu
end
# meal = Meals.new ("chicken" [1,2,3], "$2", Menu.new("$2", "Chicken"))
# #
# meal.food[2]
exit = false
def menu
  puts "\n"
  puts "====Welcome to Restaurant===="
  puts "1. Choose Meals"
  puts "2. Exit the program"
end
until exit do
  menu
  command = gets.chomp
  if command == "3"
      puts "you idiot, choose 1 or 2."
  end
  if command == "2" then
    puts "\n exiting application"
    exit = true
  end

  if command == "1" then
    puts "Choose Meal: Chicken, Beef or Pork"
  end
command = gets.chomp
    if command == "Chicken"
      puts "The Chicken cost $2"
    elsif command == "Beef"
      puts "The Beef cost $4"
    elsif command == "Pork"
      puts "The Pork cost $2.50"
end
end
