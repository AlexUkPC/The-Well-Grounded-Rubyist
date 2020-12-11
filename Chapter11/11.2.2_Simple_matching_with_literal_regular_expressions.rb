p /abc/.match?("The alphabet starts with abc.")
p "The alphabet starts with abc.".match?(/abc/)

puts "Match!" if /abc/ =~ "The alphabet starts with abc."
puts "Match!" if "The alphabet starts with abc." =~ /abc/

p /abc/.match("The alphabet starts with abc.")
p /abc/.match("def")

p "The alphabet starts with abc." =~ /abc/
