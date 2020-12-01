class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def venue
    @venue
  end

  def price=(amount)
    @price = amount
  end

  def price
    @price
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end
end

ticket = Ticket.new("Town Hall", "2013-11-12")
ticket.price = 100.00
puts "The ticket for #{ticket.venue} has been discounted 15% to $#{"%.2f" % ticket.discount(15)}."
