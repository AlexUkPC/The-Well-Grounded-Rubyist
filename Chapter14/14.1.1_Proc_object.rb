pr = Proc.new { puts "Inside a Proc's block" }
pr.call

pr2 = proc { puts "Inside a Proc's block" }
pr2.call
