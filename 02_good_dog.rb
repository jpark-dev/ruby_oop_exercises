class GoodDog
  # constructor
  def initialize(name)

    # @variable = instance variable
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end
  
  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name
sparky.set_name = "Twice"
puts sparky.get_name

fido = GoodDog.new("Fido")
puts fido.speak
