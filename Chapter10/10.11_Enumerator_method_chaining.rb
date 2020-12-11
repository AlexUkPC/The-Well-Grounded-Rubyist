animals = %w{Jaguar Turtle Lion Antelope}
puts animals.select { |n| n[0] < "M" }.map(&:upcase).join(", ")
