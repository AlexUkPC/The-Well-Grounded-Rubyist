class C
  def self.inherited(subclass)
    puts "#{self} just got subclassed by #{subclass}"
  end
end

class D < C
end

class E < D
end

#the limits of the inherited callback
class C1
  class << self
    def self.inherited
      puts "Singleton class of C just got inherited!"
      puts "But you'll never see this message"
    end
  end
end

class D1 < C1
  class << self
    puts "D1's singleton class now exists, but no callback"
  end
end
