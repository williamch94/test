class Person
  def initialize (name, age,  location)
    @name = name
    @age = age
    @location = location
    @changeName
    @changeAge
  end

#getter
  def getname
    @name
  end

  def getage
    @age
  end

def getlocation
  @location
end

#setter
def setName(newName)
  @changeName = newName
end

def setAge(newAge)
  @changeAge = newAge
end

end

john = Person.new("John", 9, "Sydney")
trent = Person.new("Trent", 10, "Sydney")
name = trent.getname
age = trent.getage
location = trent.getlocation

changeName = trent.setName ("bob")
changeAge = trent.setAge (23)

puts "The name of person is #{name}, and their age is #{age}, and they live in #{location}.
Their new name is #{changeName}, and their new age is #{changeAge}. "
