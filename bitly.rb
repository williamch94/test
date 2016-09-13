class Bitly

  def initialize()
    @access_token = $config['access_token']
    @colorize = Colorize.new
  end

  def get_url(phrase)
    @base_url = "https://api-ssl.bitly.com/v3/realtime/#{phrase}_phrases?access_token=#{@access_token}"
  end

  def get_topics(phrase_types)
    threads = []
    phrase_types.each do |phrase_type|
      base_url = get_url phrase_type
      threads << Thread.new(base_url, phrase_type) do |url, phrase_type|
        begin
          response = JSON.parse RestClient.get url
          if response['status_code'] != 200
            puts  @colorize.display 'Error: ' + response['status_txt'] + '\n', :error
            exit
          end
          display response,phrase_type
        rescue
          display_error_message
        end
        puts "\n\n"
      end
    end
    threads.each { |aThread|  aThread.join }
  end

  def display(response,phrase_type)
    puts GrowlNotifications.display "#{phrase_type.capitalize} Topics"
    puts @colorize.display "#{phrase_type.capitalize} Topics", :heading
    response['data']['phrases'].each do |data|
      puts @colorize.display("#{data['phrase']}", :text) + " " + @colorize.display("http://bit.ly/#{data['ghashes'][0]['ghash']}", :link)
    end
  end

  def display_error_message
   puts @colorize.display 'Unable to connect to the Server', :error
   exit
  end

end
class Colorize
  def display(text, element)
    color_code = case element
      when :text
        ['1;','32;','40m']
      when :heading
        ['1;','33;','40m']
      when :error
        ['1;','','31m']
      when :link
        ['4;','31;','48m']
    end
    "33[#{color_code[0]}#{color_code[1]}#{color_code[2]}#{text}33[0m"
  end
end

class GrowlNotifications
  def self.display(text)
    "\e]9;#{text}07"
  end
end
# Daemons.run('application.rb', {:ontop => true, :app_name => 'Bitly-Bot'})
loop do
  Bitly.new.get_topics ['bursting', 'hot']
  sleep $config['delay'] * 60 # delaying in minutes
end
