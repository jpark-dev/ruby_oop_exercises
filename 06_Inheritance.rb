class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end


sparky = GoodDog.new("Sparky")
paw = Cat.new
puts sparky.speak
puts paw.speak