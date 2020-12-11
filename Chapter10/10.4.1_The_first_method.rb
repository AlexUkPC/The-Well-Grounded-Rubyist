p [1, 2, 3, 4].first
p (1..10).first
p ({ 1 => 2, "one two" => "three" }.first)
address = { city: "New York", state: "NY", zip: "10027" }
p address.first
address[:zip] = "10018"
p address.first

class Die
  include Enumerable

  def each
    loop do
      yield rand(6) + 1
    end
  end
end

puts "Welcome to 'You Win If You Roll a 6'!"
d = Die.new
d.each do |roll|
  puts "You rolled a #{roll}"
  if roll == 6
    puts "You win!"
    break
  end
end
