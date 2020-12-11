p (1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }.first(10)
my_enum = (1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }
p my_enum.take(5).force
p my_enum.take(10).force
