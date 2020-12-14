class A
  def a_method
    puts "Definition in class A"
  end
end

class B < A
  def a_method
    puts "Definition in class B"
  end
end

class C < B
end

c = C.new
c.a_method #=>Definition in class B
A.instance_method(:a_method).bind(c).call #=>Definition in class A

#var 2
c.a_method #=>Definition in class B

class C
  def call_original
    A.instance_method(:a_method).bind(self).call
  end
end

c.call_original #=>Definition in class A

#alternative tehnique fir calling callable objects
mult = lambda { |x, y| x * y }
p tweleve = mult[3, 4]
p tweleve = mult.(3, 4)
