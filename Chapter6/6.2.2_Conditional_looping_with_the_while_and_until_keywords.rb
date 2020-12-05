n = 1
while n < 11
  puts n
  n += 1
end
puts "Done!"
puts "==============="

n = 1
begin
  puts n
  n += 1
end while n < 11
puts "Done!"
puts "==============="

n = 1
until n > 10
  puts n
  n += 1
end
puts "==============="
n = 1
n = n + 1 until n == 10
puts "We've reached 10!"
