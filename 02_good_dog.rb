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

# fido = GoodDog.new("Fido")
# puts fido.speak

