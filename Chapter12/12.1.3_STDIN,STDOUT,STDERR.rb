record = File.open("12.1.3_record.txt", "w")
old_stdout = $stdout
$stdout = record
$stderr = $stdout
puts "This is a record"
z = 10 / 0
