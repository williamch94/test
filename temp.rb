class Celcius

  def initialize(temperature)
    @temperature = temperature

  end

  def temperature
    @temperature
  end

  def fahrenheit
    @fahrenheit = @temperature*1.8 + 32
    @fahrenheit.round.to_s + " degree F"
  end

  # def to_s
  #   @fahrenheit.round.to_s + " degree F"
  # end

end

Monday_temp= Celcius.new (16)
Tuesday_temp = Celcius.new(17)
Wednesday_temp = Celcius.new(18)
Thursday_temp = Celcius.new(18)
Friday_temp = Celcius.new(21)
Saturday_temp = Celcius.new(16)
Sunday_temp = Celcius.new(19)

print "Mon| 16 degrees C |"
puts Monday_temp.fahrenheit
print "Tue| 17 degrees C |"
puts Tuesday_temp.fahrenheit
print "Wed| 18 degrees C |"# puts Monday_temp.to_s
puts Wednesday_temp.fahrenheit
print "Thu| 18 degrees C |"
puts Thursday_temp.fahrenheit
print "Fri| 21 degrees C |"
puts Friday_temp.fahrenheit
print "Sat| 16 degrees C |"
puts Saturday_temp.fahrenheit
print "Sun| 19 degrees C |"
puts Sunday_temp.fahrenheit
# print " Mon| 16 degrees C |"
# print Monday_temp.fahrenheit
# puts " degrees F"
#
# print " Tue| 17 degrees C |"
# print Tuesday_temp.fahrenheit
# puts " degrees F"
# print " Wed| 18 degrees C |"
# print Wednesday_temp.fahrenheit
# puts " degrees F"
# print " Thu| 18 degrees C |"
# print Thursday_temp.fahrenheit
# puts " degrees F"
# print " Fri| 21 degrees C |"
# print Friday_temp.fahrenheit
# puts " degrees F"
# print " Sat| 16 degrees C |"
# puts Saturday_temp.fahrenheit
# print " Sun| 19 degrees C |"
# puts Sunday_temp.fahrenheit
