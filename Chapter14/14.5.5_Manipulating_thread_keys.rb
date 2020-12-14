t = Thread.new do
  Thread.current[:message] = "Hello"
end
t.join
p t.keys
puts t[:message]

t = Thread.new do
  Thread.current[:message] = "Hola!"
end
t.join
p t.fetch(:message, "Greetings!")
p t.fetch(:msg, "Greetings!")
#p t.fetch(:msg) #`fetch': key not found: :msg
