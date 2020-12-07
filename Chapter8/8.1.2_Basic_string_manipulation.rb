string = "Ruby is a cool language."
puts string[5] #=>i
puts string[-12] #=>o
puts string[5, 10] #=>is a cool
puts string[7...14] #=> a cool
puts string[-12..-3] #=>ol languag
puts string[-12..20] #=>ol langua
puts string[15...-1] #=>language
puts string["cool lang"] #=>cool lang
puts string["very cool lang"] #=>nil
puts string[/c[ol ]+/] #=>cool l
string.slice!("cool ")
puts string #=>Ruby is a language.

string = "Ruby is a cool language."
string["cool"] = "great"
puts string #=>Ruby is a great language.
string[-1] = "!"
puts string #=>Ruby is a great language!
string[-9..-1] = "thing to learn!"
puts string #=>Ruby is a great thing to learn!

str = "Hi "
puts str #=>Hi
puts str + "there." #=>Hi there.
puts str #=>Hi

str = "Hi "
puts str #=>Hi
puts str << "there." #=>Hi there.
puts str #=>Hi there.

class Person
  attr_accessor :name

  def to_s
    name
  end
end

david = Person.new
david.name = "David"
puts "Hello, #{david}!" #=>Hello, David!
