def call_a_proc(&block)
  block.call
end

call_a_proc { puts "I'm the block...or Proc...or something." }

p = Proc.new { |x| puts x.upcase }
%w{David Black}.each(&p)
