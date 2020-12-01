obj = Object.new
def obj.one_arg(x)
  puts "I require one and only one argument!"
end
obj.one_arg(2)

def obj.multi_args(*x)
  puts "I can take zero or more arguments!"
end
obj.multi_args(2,3,4,5)

def obj.two_or_more(a,b,*c)
  puts "I require two or more arguments!"
  puts "And sure eniugh, I got: "
  p a,b,c
end
obj.two_or_more(1,2,3,4,5)