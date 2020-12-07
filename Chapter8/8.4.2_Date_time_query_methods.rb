require "date"
require "time"
dt = DateTime.now
puts dt.year
puts dt.hour
puts dt.minute
puts dt.second
t = Time.now
puts t.month
puts t.sec
d = Date.today
puts d.day

puts t.sunday?
puts d.monday?
puts dt.thursday?
