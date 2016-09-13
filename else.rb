# puts "Choose a menu item"
# puts "1 to exit, 2 for poem"
# command = gets.chomp
# case command
# when "1"
#   exit = true
# when "2"
#   puts "=" * 15
#   puts "Hello there, Is it me you are looking for?"
#
# else
#   puts "wrong command, try again"
#
# end

exit = false
def menu
  puts "1 or exit"
  puts "2 for poem"
end
until exit do
  menu
  command = gets.chomp
  if command == '1'
    exit = true
  elsif command == '2'
    puts "hello, is it me you are looking for "
  else
    puts "wrong command"
  end
end
