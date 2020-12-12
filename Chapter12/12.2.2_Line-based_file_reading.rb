f = File.new("12.2.1.txt")
p f.gets
p f.gets
p f.gets

f.rewind
p f.readlines

f.rewind
f.each {|line| puts "Next line: #{line}"}
