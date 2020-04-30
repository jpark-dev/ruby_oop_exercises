class Parent
  def say_hi
    p "Hi from Parent."
  end
end

Parent.superclass       # => Object

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  ## both send / instance_of method from object take arguments, which would give error when it's overriden.
  ## to_s is a good example to override.
  ## Make sure to familiarize with yourself with common Object methods to avoid accidental overriding.

  # def send
  #   p "send from Child..."
  # end

  # def instance_of?
  #   p "I am a fake instance"
  # end
end

child = Child.new
child.say_hi         # => "Hi from Child."

son = Child.new
son.send :say_hi       # => "Hi from Child."


class Vehicle
  @@created = 0

  def self.created
    p "created #{@@created} vehicles."
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  def initialize
    @@created += 1
  end
  
  def move
    p 'it moved!'
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

module Paintable
  def can_paint?(color)
    true
  end
end


class MyCar < Vehicle
  YEAR_PRODUCED = 1990
end

class MyTruck < Vehicle
  include Paintable
end


honda = MyCar.new
truck = MyTruck.new

Vehicle.created

p truck.can_paint?("blue")

p MyCar.ancestors
p MyTruck.ancestors
p Vehicle.ancestors



class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 15)
bob = Student.new("Bob", 19)
p "Well done" if joe.better_grade_than?(bob)
