module Secretive
  def name
    "[not available]"
  end
end

class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"
joe = Person.new
joe.name = "Joe"
ruby = Person.new
ruby.name = "Ruby"
david.extend(Secretive)
ruby.extend(Secretive)
puts "We've got one person named #{joe.name}, " +
       "one named #{david.name}, " +
       "and one named #{ruby.name}"

# adding class method with extend
module Makers
  def makes
    %w{Honda Ford Toyota Chevrolet Volvo}
  end
end

class Car
end

Car.extend(Makers)
p Car.singleton_class.ancestors

#modify core behavior with extend
module GsubBangModifier
  def gsub!(*args, &block)
    super || self
  end
end

str = "Hello there!"
str.extend(GsubBangModifier)
p str.gsub!(/zzz/, "abc")
str.gsub!(/zzz/, "abc").reverse!
puts str
