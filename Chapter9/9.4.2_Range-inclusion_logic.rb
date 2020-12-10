r = Range.new(1, 100)
p r.begin #=> 1
p r.end #=> 100
p r.exclude_end? #=>false

r = "a".."z"
p r.cover?("a") #=>true
p r.cover?("abc") #=>true
p r.cover?("A") #=>false

p r.include?("a") #=>true
p r.include?("abc") #=>false

r = 1.0..2.0
p r.include?(1.5) #=>true
