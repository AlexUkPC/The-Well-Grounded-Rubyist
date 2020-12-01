ticket = Object.new
def ticket.available?
  false
end
if ticket.available?
  puts "You're in luck!"
else
  puts "Sorry--that seat has been sold"
end
