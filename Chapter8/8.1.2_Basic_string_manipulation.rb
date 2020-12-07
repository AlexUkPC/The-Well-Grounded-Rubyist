string = "Ruby is a cool language."
puts string[5]
puts string[-12]
puts string[5, 10]
puts string[7...14]
puts string[-12..-3]
puts string[-12..20]
puts string[15...-1]
puts string["cool lang"]
puts string["very cool lang"] #=>nil
puts string[/c[ol ]+/]
string.slice!("cool ")
puts string

string = "Ruby is a cool language."
string["cool"] = "great"
puts string
string[-1] = "!"
puts string
string[-9..-1] = "thing to learn!"
puts string

str = "Hi "
puts str
puts str + "there."
puts str

str = "Hi "
puts str
puts str << "there."
puts str

class Person
  attr_accessor :name

  def to_s
    name
  end
end

david = Person.new
david.name = "David"
puts "Hello, #{david}!"
