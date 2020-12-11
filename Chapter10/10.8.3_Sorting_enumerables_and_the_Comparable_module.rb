class Painting
  include Comparable
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

pa1 = Painting.new(100)
pa2 = Painting.new(200)
puts pa1 > pa2
puts pa1 < pa2
pa3 = Painting.new(300)
puts pa2.between?(pa1, pa3)

cheapest, priceiest = [pa1, pa2, pa3].minmax
p Painting.new(1000).clamp(cheapest, priceiest).object_id == priceiest.object_id

