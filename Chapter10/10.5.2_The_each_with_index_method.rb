names = ["Geroge Washington", "John Adams", "Thomas Jefferson", "James Madison"]
names.each_with_index do |pres, i|
  puts "#{i + 1}. #{pres}"
end

array = %w(red yellow blue)
array.each.with_index do |color, i|
  puts "Color number #{i} is #{color}"
end

names.each.with_index(1) do |pres, i|
  puts "#{i} #{pres}"
end
