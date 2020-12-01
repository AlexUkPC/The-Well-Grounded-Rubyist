def mixed_args(a,b,*c,d)
  puts "Arguments: "
  p a,b,c,d
end
mixed_args(1,2,3,4,5)
puts "===3 args:==="
mixed_args(1,2,3)

def args_unleashed(a,b=1,*c,d,e)
  p a,b,c,d,e
end
puts "===5 args==="
args_unleashed(1,2,3,4,5)
puts "===4 args==="
args_unleashed(1,2,3,4)
puts "===3 args==="
args_unleashed(1,2,3)
puts "===8 args==="
args_unleashed(1,2,3,4,5,6,7,8)
