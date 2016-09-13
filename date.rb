class Man
  def initialize(name, age, location, race, woman)
    @name = name
    @age = age
    @location = location
    @race = race
    @woman = woman
    @sex = sex
  end
  attr_accessor :name, :age, :location, :race, :woman,
end

class Woman
    def initialize(name, age, location, race, man)
      @name = name
      @age = age
      @location = location
      @race = race
      @man = man
    end
attr_accessor :name, :age, :location, :race, :man,
end
