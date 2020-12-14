lam = lambda { puts "A lambda!" }
p lam
lam.call

def return_test
  l = lambda { return }
  l.call
  puts "Still here!"
  p = Proc.new { return }
  p.call
end

return_test

lam = -> { puts "Hi" }
lam.call
mult = ->(x, y) { x * y }
p mult.call(3, 4)

