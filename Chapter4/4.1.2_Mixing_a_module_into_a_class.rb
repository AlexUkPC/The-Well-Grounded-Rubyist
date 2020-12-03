require_relative "4.1.1_Stacklike"

class Stack
  include Stacklike
end

s = Stack.new
s.add_to_stack("item one")
s.add_to_stack("item two")
s.add_to_stack("item three")
puts "Objects currently in stack:"
puts s.stack
taken = s.take_from_stack
puts "Removed this object"
puts taken
puts "Now on stack:"
puts s.stack
