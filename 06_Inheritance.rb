class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end


sparky = GoodDog.new
paw = Cat.new
puts sparky.speak
puts paw.speak