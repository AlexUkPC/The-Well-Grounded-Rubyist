def multiply_by(m)
  Proc.new { |x| puts x * m }
end

mult = multiply_by(10)
mult.call(12)

def call_some_proc(pr)
  a = "irelevant 'a' in method scope"
  puts a
  pr.call
end

a = "'a' to be used in Proc block"
pr = Proc.new { puts a }
pr.call
call_some_proc(pr)

def make_counter
  n = 0
  return Proc.new { n += 1 }
end

c = make_counter
puts c.call
puts c.call
d = make_counter
puts d.call
puts c.call
puts c.call
puts c.call
puts d.call
puts c.call
