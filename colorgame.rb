require 'Terminal-Table'
require 'highline'
require 'colorize'
require './progressbar.rb'

exit = false

class User
  def initialize (name, score)
    @name = name
    @score = score
  end
  attr_accessor :name; :score;


def self.all
  ObjectSpace.each_object(self).to_a
end

cli = HighLine.new
name = cli.ask "Insert Name"

table = Terminal::Table.new do |t|
  t.title = "Welcome to the Colour Game, #{name}"
end
puts table

# def login
#   system "clear"
#
#   li = HighLine.new
#   name = cli.ask "Insert Name"
#
#   table = Terminal::Table.new do |t|
#     t.title = "Welcome to the Colour Game, #{name}"
# puts table
#
#
#
#   John.menu
#   login

# end
def menu
system "clear"
  puts "\t1. Start Game"
  puts "\t2. Read Instructions"
  puts "\t3. Leave Game"
  puts "\t4. High Score"

  puts "\n"
@a = gets.chomp
case @a
when "1"
  start_game
when "2"
  read_instructions
when "3"
  leave_game
when "4"
  high_score
else
  puts "Enter number 1,2,3 or 4"
  sleep(3)
  menu
end
end

def read_instructions
  system "clear"
  puts "Type in the colour of the words. You have 30 seconds to answer as many as you can"
  puts "This is blue".colorize( :green )
  puts "For example, the above answer would be green"
end

def start_game
  puts "wtf"
  system "clear"
end
def leave_game
  system "clear"
  puts "Goodbye"
  sleep(3)
  system "clear"
end

def high_score
  puts "45"
  system "clear"
end
end
John = User.new("John", 24)
John.menu
