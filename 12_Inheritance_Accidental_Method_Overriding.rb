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

