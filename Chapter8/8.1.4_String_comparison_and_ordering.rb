puts "a" <=> "b" #=>-1
puts "b" > "a" #=>true
puts "a" > "A" #=>true
puts "." > "," #=>true
puts "============"
puts "string" == "string" #=>true
puts "string" == "house" #=>false
puts "============"
puts "a".equal?("a") #=>false
puts "a".equal?(100) #=>false
