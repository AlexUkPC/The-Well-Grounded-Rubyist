File.open("12.2.7_records.txt") do |f|
  f.each do |record|
    name, nationality, instrument, dates = record.chomp.split("|")
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}."
  end
end

count = 0
total_ages = File.readlines("12.2.8_members.txt").inject(0) do |total, line|
  count += 1
  fields = line.split
  age = fields[3].to_i
  total + age
end
puts "Average age of group: #{total_ages / count}"

#same thing without creating an intermediary array
count = 0
total_ages = File.open("12.2.8_members.txt") do |f|
  f.inject(0) do |total, line|
    count += 1
    fields = line.split
    age = fields[3].to_i
    total + age
  end
end
puts "Average age of group: #{total_ages / count}"
