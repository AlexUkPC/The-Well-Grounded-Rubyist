class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    @venue = venue
    @date = date
  end
  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end

class TTT
  def TTT.most_expensive_2(*tickets)
    tickets.max_by(&:price)
  end
end

def most_expensive_3(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new("Town Hall", "2013-11-12")
cc = Ticket.new("Convention Center", "2014-12-13")
fg = Ticket.new("Fairgrounds", "2015-10-11")
th.price=12.55
cc.price=10
fg.price=18
highest= Ticket.most_expensive(th,cc,fg)
puts "The highest-priced ticket is the one for #{highest.venue}."

highest2 = TTT.most_expensive_2(th,cc,fg)
puts "The highest-priced ticket with another class method #{highest2.venue}." #! it's working the same and I don't understand yet why

highest3 = most_expensive_3(th,cc,fg)
puts "The highest-priced ticket with a simple method #{highest3.venue}." #! it's working the same and I don't understand yet why

