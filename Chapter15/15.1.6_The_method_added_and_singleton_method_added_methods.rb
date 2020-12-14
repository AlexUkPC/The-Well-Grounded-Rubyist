class C
  def self.method_added(m)
    puts "Method #{m} was just defined."
  end

  def a_new_method
  end
end

puts "================="

class C1
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
end

puts "================="

class C2
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
  def self.new_class_method
  end
end

puts "================="

obj = Object.new
def obj.singleton_method_added(m)
  puts "Singleton method #{m} was just defined."
end
def obj.a_new_singleton_method
end

puts "================="

obj = Object.new
class << obj
  def singleton_method_added(m)
    puts "Singleton method #{m} was just defined."
  end
end

puts "================="

class C3
  def singleton_method_added(m)
    puts "Singleton method #{m} was just defined."
  end
end

c = C3.new
def c.a_singleton_method
end
