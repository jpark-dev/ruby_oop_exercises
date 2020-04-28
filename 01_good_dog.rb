module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

# sparky = GoodDog.new
# sparky.speak("Arf!")

# bob = HumanBeing.new
# bob.speak("Hello!")

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors


# How do we create an object in Ruby? Give an example of the creation of an object.

# - define a class
# - instantiate it using .new

class NewObject
end

my_obj = NewObject.new


# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

# module = group reusable code into one place
# invoke include method within class with a name. Also a namespace.

module Move
  def move(input)
    puts "#{inputs}"
  end
end

class NewObject
  include Move
end

