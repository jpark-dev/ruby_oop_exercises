class GoodDog
  # attr_reader / attr_writer can be used if just getter/setter is needed.
  attr_accessor :name, :height, :weight

  # constructor
  def initialize(n, h, w)

    # @variable = instance variable
    @name = n
    @height = h
    @weight = w
  end
  
  def speak
    "#{name} says Arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info
puts sparky.change_info("Happy", "2 inches", "5 lbs")
puts sparky.info


# Create a class called MyCar. 
# When you initialize a new instance or object of the class, 
# allow the user to define some instance variables that tell us 
# the year, color, and model of the car. 
# Create an instance variable that is set to 0 
# during instantiation of the object to track the current speed of the car as well. 
# Create instance methods that allow the car to speed up, brake, and shut the car off.

class Mycar
  attr_accessor :color, :model, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    self.speed += number
    puts "Speeded up by #{number}km/h."
    puts "Current speed: #{self.speed}"
  end

  def brake(number)
    self.speed -= number
    puts "Slowed down by #{number}km/h."
    puts "Current speed: #{self.speed}"

  end

  def shut_off
    self.speed = 0
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!"
  end

  def info
    "#{self.model}, #{self.color}, #{self.year}"
  end

  def spray_paint(color)
    self.color = color
    puts "you painted your car to #{self.color}"
  end


end

car = Mycar.new(2019, "blue", "Ford");

puts car.info
car.speed_up(20)
car.brake(10)
car.speed_up(120)
car.brake(30)
car.shut_off

car.spray_paint("rainbow")
puts car.info

