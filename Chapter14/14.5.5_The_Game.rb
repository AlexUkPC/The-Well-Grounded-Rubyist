require "socket"
require_relative "14.5.5_rps"
s = TCPServer.new(3939)
thread = []
2.times do |n|
  conn = s.accept
  thread << Thread.new(conn) do |c|
    Thread.current[:number] = n + 1
    Thread.current[:player] = c
    c.puts "Welcome player #{n + 1}"
    c.print "Your move?(rock, paper, scissors) "
    Thread.current[:move] = c.gets.chomp
    c.puts "Thanks... hang on."
  end
end
a, b = thread
a.join
b.join
rsp1, rsp2 = Games::RPS.new(a.fetch(:move, "error")), Games::RPS.new(b.fetch(:move, "error"))
winner = rsp1.play(rsp2)
if winner
  result = winner.move
else
  result = "TIE!"
end
thread.each do |t|
  t[:player].puts "The winner is #{result}!"
end
s.close
