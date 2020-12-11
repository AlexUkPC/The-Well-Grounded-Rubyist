class Painting
  attr_reader :price
  attr_accessor :year

  def initialize(price, year)
    @price = price
    @year = year
  end

  def to_s
    "My price is #{price} and I was painted in year #{year}"
  end

  def <=>(other_painting)
    self.price <=> other_painting.price
  end
end

paintings = 5.times.map { Painting.new(rand(100..900), rand(1900..2000)) }
puts "5 randomly generated Paintin prices:"
puts paintings
puts "Same paintings, sorted by year:"
year_sort = paintings.sort do |a, b|
  a.year <=> b.year
end
puts year_sort

puts "=========="
p ["2", 1, 5, "3", 4, "6"].sort { |a, b| a.to_i <=> b.to_i }
