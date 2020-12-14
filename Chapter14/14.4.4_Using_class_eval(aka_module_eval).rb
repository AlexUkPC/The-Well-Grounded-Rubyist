c = Class.new
c.class_eval do
  def some_method
    puts "Created in class eval"
  end
end
c_instance = c.new
c_instance.some_method

var = "initialized variable"

class C
  #puts var #=>undefined local variable or method `var' for C:Class
end

C.class_eval { puts var }

C.class_eval { def talk; puts var; end }
#C.new.talk #=>undefined local variable or method `var' for #<C:0x0000000006336a20>

p C.class_eval { define_method("talk") { puts var } }
C.new.talk

class Name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    instance_variables.each do |ivar|
      print "#{instance_variable_get(ivar)} "
    end
  end

  def method_missing(m, args, &block)
    if m.to_s.end_with?("_name=")
      self.class.send(:define_method, m) do |args|
        instance_variable_set("@#{m.to_s.chop}", args)
      end
      send(m, args)
    else
      raise "No method for #{m}"
    end
  end
end

n = Name.new("Joe", "Leo")
p n.instance_variables
n.to_s
n.middle_name = "Philip"
p n.instance_variables
n.to_s
#n.initials = "JPL" #`method_missing': No method for initials=
