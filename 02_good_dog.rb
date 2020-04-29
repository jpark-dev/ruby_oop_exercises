class GoodDog
  attr_accessor :name
  
  # constructor
  def initialize(name)

    # @variable = instance variable
    @name = name
  end
  
  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Twice"
puts sparky.name

fido = GoodDog.new("Fido")
puts fido.speak
