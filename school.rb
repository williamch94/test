class School
  def initialize(location, name, ranking, age, student)
    @location = location
    @name =  name
    @ranking = ranking
    @age = age
    @student = student
    @assignments = assignments
  end

attr_accessor :location, :name, :ranking, :age, :student, :assignments


def depleteassignments(code)
  @assignments = @assignments - (code * 1)
end
end

  class Student
    def initialize(name, age, gender, address, school)
      @name = name
      @age = age
      @gender = gender
      @address = address
      @school = school
    end

attr_accessor :name, :age, :gender, :address, :school
  end

school = School.new("LA", "UCLA", "10", "1875", Student.new("William Chow", "22", "Male", "Australia", "UCLA"))
student = Student.new("William Chow", 22, "Male", "Australia", School.new("LA", "UCLA", "10", "1875", "William Chow"))

puts student.name
puts school.depleteassignments (5)
puts school.assignments
