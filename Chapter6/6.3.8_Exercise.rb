class Array
  def my_each
    c = 0
    until c == size
      yield self[c]
      c += 1
    end
    self
  end
end

class Integer
  def my_times
    a = Array(1..self)
    a.my_each { |e| puts yield(e) }
    self
  end
end

5.my_times { |i| puts "I'm on iteration #{i}" }
