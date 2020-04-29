class GoodDog
  # constructor
  def initialize(name)

    # @variable = instance variable
    @name = name
  end

  def name            # This was renamed from "get_name"
    @name
  end

  def name=(n)        # This was rename from "set_name="
    @name = n
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
