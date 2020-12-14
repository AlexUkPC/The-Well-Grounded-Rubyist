module M
  def self.included(c)
    puts "I have just mixed into #{c}"
  end
end

class C
  include M
end

module M1
  def self.included(c1)
    def c1.a_class_method
      puts "Now the class has a new class method."
    end
  end

  def an_inst_method
    puts "This module supplies this instance method"
  end
end

class C1
  include M1
end

C1.a_class_method
c1 = C1.new
c1.an_inst_method
