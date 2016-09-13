#Trent Shields Code 
require 'artii'
require 'terminal-table'
require 'paint'
require 'catpix'
exit = false
ASCII = Artii::Base.new :font => 'slant'

class Menu
  def initialize(food)
    @food = food
  end

  attr_accessor :food
end

class Food
  def initialize(name, price)
    @name = name
    @price = price
  end

  attr_accessor :name, :price
end

def logo
  system "clear"
  puts ASCII.asciify("Cafe Trent")
  puts "=" * 50
  puts "*" * 50
  puts "=" * 50
  puts "\n"
end

def mainMenu
  puts "Welcome!, please select from the options below"
  puts "\n"
  puts "\t1. See our menu"
  puts "\t2. Meet the staff"
  puts "\t3. Leave unsatisfied"
  puts "\n"
end

menu = Menu.new([Food.new("Coffee", 12), Food.new("More Coffee", :sunglasses:, Food.new("My god I love coffee", 40)])

menu.food = menu.food << Food.new("Better coffee", 20)
until exit do
  logo
  mainMenu
  command = gets.chomp

  case command
    when "1"

      system "clear"
      logo
      puts "Please choose from our beverages"
      table = Terminal::Table.new do |t|
        menu.food.each_with_index do |food, i|
          i = i + 1
          colour = i == 3 ? Paint[food.name, :green] : food.name
            t << [i, colour, "$#{food.price}"]
        end
      end
      puts table
      selection = gets.chomp
      logo

        case selection
        when "1"
          puts "good choice"
        when "2"
          puts "great choice!"
        when "3"
          i = 0
          color = {1 => :red, 2 => :yellow, 3 => :green, 4 => :blue, 5 => :yellow}
          5.times do
            i = i + 1
            print "\t" * i
            print Paint["You are a god", color[i]]
            puts "\n"
            sleep(1)
          end
        end


        sleep(1)
    when "2"
      Catpix::print_image "group.jpg",
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :bg => "white",
  :bg_fill => true,
  :resolution => "low"
    when "3"
exit = true
    else
      puts "wrong command"
  end

end
