array = [1, 2, 3, 4, 5]
array.each { |e| puts "The block just got handled #{e}." }

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

array.my_each { |x| puts "The block was handled by my_each method #{x}" }
