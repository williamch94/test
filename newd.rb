require 'rubygems'
require 'jabber/bot'

# Create a public Jabber::Bot
config = {
  :name      => 'SampleBot',
  :jabber_id => 'bot@example.com',
  :password  => 'secret',
  :master    => 'master@example.com',
  :is_public => true
}

bot = Jabber::Bot.new(config)

# Give your bot a private command, 'rand'
bot.add_command(
  :syntax      => 'rand',
  :description => 'Produce a random number from 0 to 10',
  :regex       => /^rand$/
) { rand(10).to_s }

# Give your bot a public command, 'puts <string>' with an alias 'p <string>'
bot.add_command(
  :syntax      => 'puts <string>',
  :description => 'Write something to $stdout',
  :regex       => /^puts\s+(.+)$/,
  :alias       => [ :syntax => 'p <string>', :regex => /^p\s+(.+)$/ ],
  :is_public   => true
) do |sender, message|
  puts "#{sender} says '#{message}'"
  "'#{message}' written to $stdout"
end

# Bring your new bot to life
bot.connect
