x = 13
if x > 10
  puts x
end

if x > 10 then puts x end

if x > 10; puts x; end

def print_conditionally
  print "Enter an integer: "
  n = gets.to_i
  if n > 0
    puts "Your number is positive."
  elsif n < 0
    puts "Your number is negative."
  else
    puts "Your number is zero."
  end
end

if not(x == 1)
  puts "x!=1"
end
if !(x == 1)
  puts "x!=1"
end
unless x == 1
  puts "x!=1"
end
unless x > 100
  puts "Small number!"
else puts "Big number" end
puts "Big number!" if x > 100
puts "Big number" unless x <= 100
