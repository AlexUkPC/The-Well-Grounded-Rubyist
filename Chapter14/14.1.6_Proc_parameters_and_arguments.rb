pr = Proc.new { |x| puts "Called with argument #{x}" }
pr.call(100)
pr.call
pr.call(1, 2, 3)
