def capture_block(&block)
  puts "Got block as proc"
  block.call
end

capture_block { puts "Inside the block" }

#using procs for blocks
p = Proc.new { puts "This proc argument will serve as a code block." }
capture_block(&p)

#hash to proc
albums = { 1988 => "Straight Outta Compton", 1993 => "Midnight Marauders", 1996 => "The Score", 2004 => "Madvillainy", 2015 => "To Pimp a Butterfly" }
p albums[2015]
p ([1988, 1996].map(&albums))
p ((1990..1999).map(&albums).compact)

#generalizing to_proc
class Person
  attr_accessor :name
  def self.to_proc
    Proc.new { |person| person.name }
  end
end

d = Person.new
d.name = "David"
j = Person.new
j.name = "Joe"
p ([d, j].map(&Person))
