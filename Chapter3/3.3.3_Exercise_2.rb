class Ticket
  def initialize(venue)
    @venue = venue
  end

  def venue
    @venue
  end

  def date=(date)
    year, month, day = date.split("-")
    if year.length != 4
      puts "Please submit the date in the format 'yyyy-mm-dd'."
    else
      @date = date
      puts @date
    end
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

ticket = Ticket.new("Town Hall")
ticket.date = "2013-11-12"
ticket.price = 100.00
