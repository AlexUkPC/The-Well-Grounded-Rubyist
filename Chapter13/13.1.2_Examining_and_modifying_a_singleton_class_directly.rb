str = "I am a string"
class << str
  def twice
    self + " " + self
  end
end
puts str.twice

N = 1
obj = Object.new
class << obj
  N = 2
end
def obj.a_method
  puts N
end
class << obj
  def another_method
    puts N
  end
end
obj.a_method
obj.another_method

class Ticket
  class << self
    def most_expesive(*tickets)
      tickets.max_by(&:price)
    end
  end
end

#see 3.6.3 for the rest of the code for class Ticket and usage
