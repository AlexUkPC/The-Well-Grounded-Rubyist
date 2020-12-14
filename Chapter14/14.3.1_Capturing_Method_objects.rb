class C
  def talk
    puts "Method-grabbing test! self is #{self}."
  end
end

c = C.new
meth = c.method(:talk)
p meth.owner
meth.call

class D < C
end

d = D.new
unbound = meth.unbind
unbound.bind(d).call
