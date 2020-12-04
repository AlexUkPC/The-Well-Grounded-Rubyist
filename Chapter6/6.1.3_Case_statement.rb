def quit_or_not
  print "Exit the program?(yes or no): "
  answer = gets.chomp
  case answer
  when "y", "yes"
    puts "Good bye!"
    exit
  when "n", "no"
    puts "OK, we'll continue"
  else
    puts "That's an unknow answer -- assuming you meant 'no' "
  end
  puts "Continue with program..."
  quit_or_not
end

# quit_or_not

class Ticket
  attr_accessor :venue, :date

  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.venue == other_ticket.venue
  end
end

ticket1 = Ticket.new("Town Hall", "07/08/18")
ticket2 = Ticket.new("Conference Center", "07/08/18")
ticket3 = Ticket.new("Town Hall", "08/09/18")
puts "ticket1 is for an event at: #{ticket1.venue} "
case ticket1
when ticket2
  puts "Same location as ticket2!"
when ticket3
  puts "Same location as ticket3!"
else
  puts "No match"
end
