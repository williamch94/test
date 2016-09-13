# create a simple game on colour of the text. have a progressbar and stopwatch countdown.
# records user scores onto a text file for each user to display on the high score list
#when choosing high score on the menu. scores are reset once exiting terminal.
require 'Terminal-Table'
require 'highline'
require 'colorize'
require './progressbar.rb'
#require 'artii'
# require './stopwatch.rb'
#exit = false
#ASCII = Artii::Base.new :font => 'slant'

class ColorQuestion
  
  def initialize(actual_color, text, fail_message, display_color = nil, encouragement_message = nil)
    @actual_color = actual_color
    @display_color = display_color || actual_color
    @text = text
    @fail_message = fail_message
    @encouragement_message = encouragement_message
  end

  def ask(progressbar)
    system "cls"
    progressbar.before_output

    if @encouragement_message
      puts @encouragement_message
    end

    puts @text.colorize(@display_color)
    answer = gets.chomp
    if answer == @actual_color.to_s
      progressbar.increment
      true
    else
      gameover
      false
    end
  end

  def gameover
    puts "game over, #{@fail_message}"
    sleep (4)
  end
end

class User
  def initialize(name, score)
    @name = name
    @score = score
  end
  attr_accessor :name, :score

  def login
      # system "cls"
      cli = HighLine.new
      @name = cli.ask("Insert Name").upcase

      John.menu
  end

  def menu
    system "cls"
    puts "=========Welcome to the colour game, #{@name}============"
    puts "1. Start Game"
    puts "2. Read Instructions"
    puts "3. Leave Game"
    puts "4. Recent Score"

    @a = gets.chomp
    case @a
    when "1"
      start_game
    when "2"
      read_instructions
    when "3"
      leave_game
    when "4"
      recent_score
    else
      puts "insert 1,2,3 or 4"
      sleep(0.4)
      menu
    end
  end

def start_game
  # require './stopwatch.rb'
  #save users score and name onto a textfile and open this on high score
  #have a stop watch counting down from 30 seconds displayed alongside questions and have 100 possible questions.
  system "cls"

  questions = [
    ColorQuestion.new(:yellow, "yellow", "Whattttt"),
    ColorQuestion.new(:blue, "RED", "you scored 1 point LOL..or maybe you are colour blind"),
    ColorQuestion.new(:green, "Brown", "you scored 2 points...shouldn't listen to a PC"),
    ColorQuestion.new(:red, "Purple", "lol 3 points....."),
  #ColorQuestion.new(:yellow.on_red, "q5. time is running out...", "4 points out of 100 questions lmao, won't trust you with a gun" ),
    ColorQuestion.new(:yellow, "BLUE BLUE BLUE", "didn't you know? red + green = yellow. 5 points. hahahhahaha", :green, "q5. Ok, think you are smart?".colorize(:red)),
  ColorQuestion.new(:white, "q6. RED + BLUE?", "6 points...tricked lol"),
    ColorQuestion.new(:white, "ok, shit is getting real. Continue? (Y/N)", "to be fair i didn't put the q7 infront of it, but hey you fell for it hahaha"),
  ]

  @progressbar = ProgressBar.new(0, questions.count)

  correct = false

  questions.each do |question|
    correct = question.ask @progressbar
    if !correct
      break
    end
  end

  if correct
    system "cls"
    puts "damn. I almost had you, for the purpose of this task, we will stop here so
          i can work on adding the stopwatch and more questions/colours onto this
          as well as save scores onto textfiles"
    sleep(15)
  end

  menu

end
#

def read_instructions
  system "cls"
  puts "Type in the colour of the words. You have 30 seconds to answer
as many as you can! This test your precision and speed"
  puts "This is blue".colorize( :green )
  puts "For example, the above answer would be green. Easy right?"
puts "Lets try another one....? Y/N"
@a = gets.chomp.upcase
case @a
when "Y" || "y" || "yes"
  system "cls"
  puts "This is yellow on blue. Your eyes hurt.".colorize( :red ).on_blue
  puts "The answer would be red. Still pretty easy right?."
  puts "Back to Menu? Y/N"
  @a = gets.chomp.upcase
  case @a
  when "Y" || "y" || "yes"
    menu
  when "N"
    read_instructions
  else
    puts "Y or N please"
    sleep(3)
read_instructions
end

when "N"
  menu
else
  menu
end
end

def recent_score
  system "cls"
  if @progressbar
    # table = Terminal::Table.new do |t|
    #   t.title = "High Score"
    score = @progressbar.progress #this needs to be fixed!! I want to accumulate the points from start game.
    puts "#{@name}, you suck, you only scored #{score}"
    puts "Y to Menu"
    answer = gets.chomp.upcase
    if answer == "Y"
      menu
    else
      high_score
    end
  else
    puts "Y u no play?"
    sleep (2)
    menu
  end
end

def leave_game
  system "cls"
  puts "See you next time #{name}!"
  sleep(2)
  system "cls"
end

def self.all?
  ObjectSpace.each_object(self).to_a
end

end
John = User.new("John", 19)
John.login
