class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}" # from ruby 2.7, private methods can be called with self
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
sparky.human_years


class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
fido.a_public_method        # => Will this work? Yes, I'm protected!

# fido.a_protected_method
  # => NoMethodError: protected method `a_protected_method' called for
    #<Animal:0x007fb174157110>