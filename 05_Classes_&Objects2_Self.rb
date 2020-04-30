class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# p sparky.what_is_self

# <GoodDog:0x0000000000935760 @name="Sparky", @height="12 inches", @weight="10 lbs">

class Mycar
  attr_accessor :gas, :travelDistance

  def initialize(travelDistance, gas)
    self.gas = gas
    self.travelDistance = travelDistance
  end

  def to_s
    puts "The gas mileage of the car is #{travelDistance / gas}."
  end

    
end

my_car = Mycar.new(400, 5)

puts my_car


class Person
  attr_accessor :name
  # attr_writer :name ## => This also works but doesn't allow getter access
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"