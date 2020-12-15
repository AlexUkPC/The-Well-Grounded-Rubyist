p ([1, 3, 5].map { |x| x * 5 })
p (Array.new(4) { |i| "#{i + 1}A" })
p ({ a: 80, b: 90, c: 100 }.select { |k, v| v > 90 })
"I love Ruby!".each_byte { |b| print b, " " }
