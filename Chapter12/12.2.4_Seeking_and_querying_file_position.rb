f = File.new("12.2.1.txt")
p f.pos
p f.gets
p f.pos
f.pos = 10
p f.gets

f.seek(20)
p f.gets
