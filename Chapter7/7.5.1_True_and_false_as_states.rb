if (class MyClass end)
  puts "Empty class definition is true!"
else
  puts "Empty class definition is false!"
end

if (class Myclass; 1; end)
  puts "Class definition with the number 1 is true!"
else
  puts "Class definition with the number 1 is false!"
end

if (def m; return false; end)
  puts "Method definition is true!"
else
  puts "Method definition is false!"
end

if "string"
  puts "Strings appear to be true!"
else
  puts "Strings appear to be false!"
end

if 100 > 50
  puts "100 is greater then 50!"
else
  puts "100 is not greater then 50!"
end
