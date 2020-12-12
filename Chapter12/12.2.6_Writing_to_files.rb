f = File.new("12.2.6.data.out", "w")
f.puts "David A. Black, Rubyist"
f.close
puts File.read("12.2.6.data.out")
puts "=============="
f = File.new("12.2.6.data.out", "a")
f.puts "Joe Leo III, Rubyist"
f.close
puts File.read("12.2.6.data.out")
