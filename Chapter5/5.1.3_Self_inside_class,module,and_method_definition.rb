class C
  puts "Just started class C:"
  puts self

  module M
    puts "Nested module C::M:"
    puts self
  end

  puts "Back in the outer level of C:"
  puts self
end

class C1
  def x
    puts "Class C, method x:"
    puts self
  end
end

c1 = C1.new
c1.x
puts "That was a call to x from :#{c1} "

obj = Object.new
def obj.show_me
  puts "Inside singelton method show_me by #{self}"
end
obj.show_me
puts "Back from call to show_me by #{obj} "
