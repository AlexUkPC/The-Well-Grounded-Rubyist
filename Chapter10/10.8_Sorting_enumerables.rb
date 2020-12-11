class Painting
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def to_s
    "My price is #{price}."
  end

  def <=>(other_painting)
    self.price <=> other_painting.price
  end
end

paintings = 5.times.map { Painting.new(rand(100..900)) }
puts "5 randomly generated Paintin prices:"
puts paintings
puts "Same paintings, sorted:"
puts paintings.sort
