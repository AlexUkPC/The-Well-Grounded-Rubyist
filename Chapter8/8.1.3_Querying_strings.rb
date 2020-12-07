string = "Ruby is a cool language."
puts string.include?("Ruby") #=>true
puts string.include?("English") #=>false

puts string.start_with?("Ruby") #=>true
puts string.end_with?("!!!") #=>false

puts string.empty? #=>false
puts "".empty? #=>true

puts string.size #=>24
puts string.count("a") #=>3
puts string.count("g-m") #=>5
puts string.count("A-Z") #=>1
puts string.count("aey. ") #=>10
puts string.count("^aey. ") #=>14
puts string.count("^g-m") #=>19
puts string.count("^g-m") + string.count("g-m") == string.length #=>true
puts string.count("ag-m") #=>8
puts string.count("ag-m", "^l") #=>6

puts string.index("cool") #=>10
puts string.index("l") #=>13
puts string.rindex("l") #=>15

puts "a".ord #=>97
puts "abc".ord #=>97
puts 97.chr #=>a
