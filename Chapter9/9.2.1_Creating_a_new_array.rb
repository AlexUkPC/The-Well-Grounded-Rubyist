a = Array.new
p a
b = Array.new(3)
p b
c = Array.new(3, "abc")
p c
d = Array.new(3) { |i| 10 * (i + 1) }
p d
e = Array.new(3, "abc")
e[0] << "def"
p e
f = Array.new(3) { "abc" }
f[0] << "def"
p f
g = [1, 2, "three", 4, []]
p g

string = "A string"
puts string.respond_to?(:to_ary)
puts string.respond_to?(:to_a)
p Array(string)
def string.to_a
  split(//)
end
p Array(string)

h = %w(Joe Leo III)
p h
i = %w{David\ A.\ Black is a Rubyist}
p i
j = %W[David is #{2018 - 1981} years old]
p j

k = %i(a b c)
p k
ll = "David"
l = %I("#{ll}")
p l

obj = Object.new
p Array.try_convert(obj)
def obj.to_ary
  [1,2,3]
end
p Array.try_convert(obj)
# this gives the error: can't convert Object to Array
# def obj.to_ary
#   "Not an array!"
# end
# p Array.try_convert(obj)
