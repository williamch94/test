customers = [
  {"name" => "William", "starsign" => "taurus", "age"=> 22, "eye colour" => "blue"},
{"name" => "Peter", "starsign" => "scorpio", "age"=> 40, "eye colour" => "green"},
{"name" => "Amy", "starsign" => "cancer", "age"=> 18, "eye colour" => "brown"}
]

customers.each do |customer|
if customer["eye colour"] == "blue" && customer ["age"].to_i < 50
puts "Young, blue eyed Customer details. There is a total of "+ customers.count.to_s + "customers"

puts customer["name"]
puts customer["starsign"]
puts customer["age"]
puts customer ["eye colour"]
puts "-" * 10
end
end
