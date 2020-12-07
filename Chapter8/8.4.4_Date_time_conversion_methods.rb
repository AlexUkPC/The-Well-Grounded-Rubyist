require "date"
require "time"
t = Time.now
puts t
puts t - 20
puts t + 20

dt = DateTime.now
puts dt
puts dt + 100
puts dt >> 3
puts dt << 10

d = Date.today
puts d
puts d.next
puts d.next_year
puts d.next_month(3)
puts d.prev_day(10)
next_week = d + 7
d.upto(next_week) { |date| puts "#{date} is a #{date.strftime("%A")}" }
