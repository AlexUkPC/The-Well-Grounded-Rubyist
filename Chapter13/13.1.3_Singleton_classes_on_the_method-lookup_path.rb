class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"
joe = Person.new
joe.name = "Joe"
ruby = Person.new
ruby.name = "Ruby"
def david.name
  "[not available]"
end
puts "We've got one person named #{joe.name}"
puts "one named #{david.name}"
puts "and one named #{ruby.name}"

puts "================"

module Secretive
  def name
    "[not available]"
  end
end

class << ruby
  include Secretive
end

puts "We've got one person named #{joe.name}"
puts "one named #{david.name}"
puts "and one named #{ruby.name}"

puts "================"

class C
  def talk
    puts "Hi from original class!"
  end
end

module M
  def talk
    puts "Hi from module!"
  end
end

c = C.new
c.talk
class << c
  include M
  p ancestors
end
c.talk
