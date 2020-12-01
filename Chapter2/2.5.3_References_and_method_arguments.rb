def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
change_string(s)
puts "s "+s

s2 = "Original string content!"
change_string(s2.dup)
puts "s2 "+s2
