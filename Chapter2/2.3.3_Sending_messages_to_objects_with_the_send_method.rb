ticket = Object.new
def ticket.date
  "1903-01-02"
end
def ticket.venue
  "Town Hall"
end
def ticket.event
  "Author's reding"
end
def ticket.performer
  "Mark Twain"
end
def ticket.seat
  "Second Balcony, row J, seat 12"
end
def ticket.price
  5.50
end
print "Information desired: "
request = gets.chomp
if ticket.respond_to?(request)
  puts ticket.send(request)
else "No such information available" 
end
