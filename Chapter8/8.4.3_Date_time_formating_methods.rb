require "date"
require "time"
t = Time.now
puts t
puts t.strftime("%m-%d-%y")

puts t.strftime("Today is %x")
puts t.strftime("Otherwise known as %d-%b-%y")
puts t.strftime("Or even day %e of %B, %Y")
puts t.strftime("The times is %H:%m")

puts Date.today.rfc2822
puts Date.today.httpdate
