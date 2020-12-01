obj = Object.new
def obj.c2f(c) # def obj.c2f c - parantheses can be omitted
  c * 9.0 / 5 + 32r
end
puts obj.c2f(100)
puts obj.c2f 0 # parantheses can be omitted

def welcome_the_user # def welcome_the_user()- ussualy if no paramethers then parantheses are ommited
  puts "Hi there!"
end

welcome_the_user
