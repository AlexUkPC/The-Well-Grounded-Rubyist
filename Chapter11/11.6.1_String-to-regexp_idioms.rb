str = "a.c"
re = /#{str}/
p re.match("a.c") #=>"a.c"
p re.match("abc") #=>"abc"

re = /#{Regexp.escape(str)}/
p re.match("a.c") #=>"a.c"
p re.match("abc") #=>nil

p Regexp.new('Mr\. David Black')
p Regexp.new(Regexp.escape("Mr. David Black"))
