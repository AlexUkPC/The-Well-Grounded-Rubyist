p "testing 1 2 3 testing 4 5 6".scan(/\d/)

str = "Leopold Auer was the teacher of Jascha Heifetz"
p violonist = str.scan(/([A-Z]\w+)\s([A-Z]\w+)/)
violonist.each do |fname, lname|
  puts "#{lname}'s first name was #{fname}"
end

# shorter version
str.scan(/([A-Z]\w+)\s([A-Z]\w+)/) do |fname, lname|
  puts "#{lname}'s first name was #{fname}"
end

###
"one two three".scan(/\w+/) { |n| puts "Next number: #{n}" }

### StringScanner class
require "strscan"
p ss = StringScanner.new("Testing string scanning")
p ss.scan_until(/ing/)
p ss.pos
p ss.peek(7)
p ss.unscan
p ss.pos
p ss.skip(/Test/)
p ss.rest
