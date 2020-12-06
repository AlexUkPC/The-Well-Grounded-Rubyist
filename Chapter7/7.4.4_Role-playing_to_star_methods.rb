class Person
  attr_accessor :name

  def to_str
    name
  end
end

david = Person.new
david.name = "David"
puts "david is named " + david + "."

class Person2
  attr_accessor :name, :age, :email

  def to_ary
    [name, age, email]
  end
end

david2 = Person2.new
david2.name = "David"
david2.age = 55
david2.email = "david@wherever"
array = []
array.concat(david2)
p array
