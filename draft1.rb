require 'Terminal-Table'
require 'artii'
require 'highline'
require 'colorize'
require 'rbcurse'
exit = false
ASCII = Artii::Base.new :font => 'slant'


class User
  def initialize (name, bot)
    @name = name
    @bot = bot
  end
  attr_accessor :name; :bot;
end

class Bot
  def initialize (quote, user)
    @quote = quote
    @user = user
  end
  attr_accessor :quote; :user;
end

# def title
#   system "clear"
#    puts ASCII.asciify("Let me make your day")
#    puts "=" * 50
#    puts "*" * 50
#    puts "=" * 50
#    puts "\n"
#  end
# puts title

cli = HighLine.new
name = cli.ask "What is your name?".colorize(:blue)
puts "Nice to meet you #{name}!, I'm going to make your day!"

system "clear"

mood = cli.ask("So, how are you feeling today #{name}?  ")
puts "Hmmm, don't worry, I will shoot you some quotes to get rid of your #{mood} day"

# cli.choose do |menu|
#   menu.prompt = "Please tell me ?  "
#   menu.choice(:show_me_a_random_gif) { cli.say("Good choice!") }
#   menu.choices(:rejection, :giving_up :dumped :no_time) { cli.say("ok wait?") }
#   menu.default = :ruby
# end
