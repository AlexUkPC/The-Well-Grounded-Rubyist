a = 1
Thread.new { a = 2 }
puts a #=>1 .... in irb =>2

a = 2
t = Thread.new { Thread.stop; a = 3 }
puts a
t.run
puts a #=>2.... in irb =>3

/(abc)/.match("abc")
t = Thread.new do
  /(def)/.match("def")
  puts "$1 in thread: #{$1}"
end.join
puts "$1 outside thread: #{$1}"
