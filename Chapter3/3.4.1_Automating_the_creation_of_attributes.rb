class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end

ticket = Ticket.new("Town Hall", "2013-11-12")
ticket.price = 63.00
puts "The ticket costs $#{"%.2f" % ticket.price}."
ticket.price = 72.5
puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price} "
