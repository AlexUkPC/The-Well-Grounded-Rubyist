p self
a = []
a.instance_eval { p self }

class C
  def initialize
    @x = 1
  end
end

c = C.new
c.instance_eval { puts @x }

string = "A sample string"
p (string.instance_exec("s") { |delim| self.split(delim) })

class Person
  def initialize(&block)
    instance_eval(&block)
  end

  def name(name = nil)
    @name ||= name
  end

  def age(age = nil)
    @age ||= age
  end
end

joe = Person.new do
  name "Joe"
  age 37
end
p joe
