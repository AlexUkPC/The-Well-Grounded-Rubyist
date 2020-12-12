print "Continue? (y/n)"
answer = gets
case answer
when /^y/i
  puts "Great!"
when /^n/i
  puts "Bye!"
  exit
else
  puts "Huh?"
end

p ["USA", "UK", "France", "Germany"].grep(/[a-z]/) #=>["France", "Germany"]
p ["USA", "UK", "France", "Germany"].select { |c| /[a-z]/ === c } #=>["France", "Germany"]
p ["USA", "UK", "France", "Germany"].grep(/[a-z]/) { |c| c.upcase } #=>["FRANCE", "GERMANY"]
p [1, 2, 3].grep(/1/) #=>[]
