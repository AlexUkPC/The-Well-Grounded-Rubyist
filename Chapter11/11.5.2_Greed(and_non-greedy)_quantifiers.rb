string = "abc!def!ghi!"
p /.+!/.match(string)[0] #=>abc!def!ghi!
p /.+?!/.match(string)[0] #=>abc!

p /(\d+?)/.match("Digit-R-Us 2345")[0] #=>2
p /\d+5/.match("Digit-R-Us 2345") #=>2345
p /(\d+)(5)/.match("Digit-R-Us 2345") #=>2345 234 5
p /(\d)(5)/.match("Digit-R-Us 2345") #=>45 4 5

#specific number of repetitions
p /\d{3}-\d{4}/.match("555-1234")
p /\d{1,10}/.match("123") #=>123
p /\d{1,10}/.match("1234564879") #=>123456789
p /\d{1,10}/.match("12345648796456") #=>123456789
p /\d{3,}/.match("1") #=>nil
p /\d{3,}/.match("123") #=>123
p /\d{3,}/.match("12345") #=>12345

#the limitation of parantheses
p /([A-Z]){5}/.match("David BLACK")
p /([A-Z]{5})/.match("David BLACK")
